#!/usr/bin/env python
from __future__ import print_function
from operator import add
import argparse
import numpy as np
import os.path
import re
import sys

"""
Assumptions: 
1- dat files to be varied listed in datfiles.txt

2- last line of _mc0 file of dat files contains format string
of form 'FORMAT:(14x (f9.6,3x))' where 14 is the number of leading
spaces, 9 is the max number of slots to allow for the number, 6 is 
the max number of digits to show past the decimal point.
"""


def main():
	args = parse_args()
	VFile.zero_run = args.zero_run

	dat_files = read_lines('datfiles.txt')
	for fname in dat_files:
		datfile = DatFile(fname)
		datfile.vary()
		datfile.print_mc()

	inp_files = parse_list(args.inpfiles)
	for fname in inp_files:
		inpfile = InpFile(fname)
		inpfile.vary()
		inpfile.print_mc()


def parse_args():
	parser = argparse.ArgumentParser()
	parser.add_argument('inpfiles',help='list of .inp file prefixes delimited by '
							'anything other than letters/numbers')
	parser.add_argument('--zero_run','-z',help='test simulation '
							'with no variation',action='store_const',const=True)
	parser.add_argument('--save','-s',help='save montecarlo results to modfile',
							action='store_const',const=True)
	return parser.parse_args()


def parse_list(files):
	return re.findall(r"[\w']+",files)


def read_lines(fname):
	with open(fname,'r') as f:
		return f.read().splitlines()


def is_data_line(line):
	return len(line) > 0 and str.isdigit(line[0][0])


class Dist(object):
	
	def __init__(self,dist_name):
		self.name = ''
		self.fn = None
		self.get_dist(dist_name)

	def get_dist(self,dist_name):
		dist_name = dist_name.strip().lower()
		if dist_name == 'norm' or dist_name == 'normal':
			self.name = 'NORMAL'
			self.fn = np.random.randn
		elif dist_name == 'lognormal':
			self.name = 'LOGNORMAL'
			self.fn = np.random.lognormal
		elif dist_name == 'beta':
			self.name = 'BETA'
			self.fn = np.random.beta


class VFile(object):
	"""Base class for files to be varied

	Attr:
		mc_file: File to write varied output to
		lines: Raw lines of mc0 file
		frmt_str: String to format data lines
		zero_run: Boolean, if true simulate with s.d. = 0
	"""
	zero_run = False

	def __init__(self,fname):
		pref,ext = fname.split('.')
		self.mc_file = open(pref + '_mc.' + ext,'w')
		self.lines = read_lines(pref + '_mc0.' + ext)
		self.frmt_str = ''

	def num_lines(self):
		return len(self.lines)
		
	def print_mc(self):
		"""Print varied lines to  mc_file"""
		for line in self.lines:
			print(line,file=self.mc_file)

	def vary(self):
		for line_num in range(self.num_lines()):
			self.vary_line(line_num)

	def vary_line(self,line):
		pass

	def format_line(self,out_list):
		line_format = self.lead_spaces*' ' + len(out_list)*self.frmt_str
		return line_format.format(*out_list)

	def replace_line(self,line,line_num):
		self.lines[line_num] = line


class DatFile(VFile):
	"""Varying .dat file

	Attr:
		sdfile: SDFile object containing standard deviation information
	"""

	def __init__(self,fname):
		fpath = os.path.join('modfile',fname + '.dat')	
		VFile.__init__(self,fpath)
		self.sdfile = SDFile(fname,self.zero_run)
		self.frmt_str = ''
		self.lead_spaces = 0
		self.set_format(fname)

	def vary_line(self,line_num):
		means = self.lines[line_num].split()
		if is_data_line(means):
			sds = self.sdfile.sd_list(line_num)
			means = [float(mean) for mean in means[1:]]
			varied = [float(m + sd) for m,sd in zip(means,sds)]
			formatted = self.format_line(varied)
			self.replace_line(formatted,line_num)

	def set_format(self,fname):
		"""Set frmt_str based on input/inputchk/{fname}.def"""
		frmt_line = self._lines_format(fname)
		self.frmt_str = self._parse_format(frmt_line)

	def _lines_format(self,fname):
		"""Return line from .def file containing format information"""
		return self.lines[-1]

	def _parse_format(self,string):
		"""Parse formatting information from .def file"""
		spaces = re.findall(r'(\d+)x',string)
		self.lead_spaces,num_spaces = [int(x) for x in spaces[:2]]
		num_format = re.findall(r'f([0-9.]+)',string)[0]
		return ('{{:<{0}f}}'.format(num_format) 
				+ ' '*int(num_spaces))


class SDFile(object):
	"""Standard deviations for .dat files

	same format as .dat file
	Attr:
		lines: Raw lines in file
		block_nums: List of block indices for each data line
		num_blocks: Integer number of blocks in file
		rnd: List of normally distributed random variables for each sd
	"""

	def __init__(self,fname,zero_run=False):
		sdpath = os.path.join('modfile',fname + 'sd.dat')
		self.lines = read_lines(sdpath)
		self.block_nums = [-1]*len(self.lines)
		self.num_blocks = 0
		self._set_block_nums()
		self.cols = self._count_cols()
		self.rnd = self._generate_rnd(zero_run)

	def _generate_rnd(self,zero_run):
		return (np.zeros((self.num_blocks/2,self.cols)) if zero_run 
					else np.random.randn(self.num_blocks/2,self.cols))

	def _count_cols(self):
		"""Get number of data columns"""
		for line in self.lines:
			if is_data_line(line.split()):
				return len(line.split())-1 

	def _set_block_nums(self):
		"""Set num_blocks, block_nums"""
		n_line = 0
		for i,line in enumerate(self.lines):
			if is_data_line(line.split()):
				self.block_nums[i] = n_line/6
				n_line += 1
		self.num_blocks = n_line/6

	def get_block_num(self,line_num):
		return self.block_nums[line_num]

	def sd_list(self,line_num):
		"""Returns standard deviations as floats"""
		block_num = self.get_block_num(line_num)
		sds = self.lines[line_num].split()
		return [float(sd)*self.rnd[block_num%2,i] for i,sd in enumerate(sds[1:])]


class InpFile(VFile):
	"""Varying .inp file

	Attr:
		effects: Effects object containing standard dev. info.
	"""

	def __init__(self,fname):
		VFile.__init__(self,fname + '.inp')
		self.effects = Effects(self.zero_run)
		self.frmt_str = '{:<8.6f}'
		self.lead_spaces = 0

	def vary_line(self,line_num):
		line = self.lines[line_num]
		sd = self.effects.get_sd(line)
		if sd!=None:
			mean = float(line.split()[0])
			varied = mean + sd*mean
			formatted = self.format_line([varied])
			self.replace_line(formatted,line_num)


class Effects(object):
	"""Contains standard deviations for .inp files

	Attr:
		sd_pairs: Dict of key->standard deviation pairs
		lines: Raw lines of effect_mc.txt
		rnd: List of normally distributed random variables for each sd
	"""

	def __init__(self,zero_run=False):
		self.sd_pairs = {}
		self.lines = read_lines('effect_mc.txt')
		self.rnd = []
		self._generate_rnd(zero_run)
		self._generate_pairs()

	def _generate_rnd(self,zero_run):
		"""Generate random array or zero array if -z"""
		size = len(self.lines) - 1
		self.rnd = [0]*size if zero_run else np.random.randn(size)

	def _generate_pairs(self):
		sd_lines = self.lines[1:]
		for i,line in enumerate(sd_lines):
			key,sd = line.split(',')
			self.sd_pairs[key] = float(sd)*self.rnd[i]

	def get_sd(self,line):
		"""Return standard deviation appropriate for line, else None"""
		for key,sd in self.sd_pairs.iteritems():
			if line.find(key)!=-1:
				self._test_repeats(key,line)
				return sd
		return None

	def _test_repeats(self,key,line):
		"""Make only one key found in line"""
		other_keys = [k for k in self.sd_pairs.keys() if k!=key]
		if any(line.find(k)!=-1 for k in other_keys): 
			print('keys overlap -- keys must be unique to'
								 'achieve desired behavior')
			sys.exit()


if __name__ == '__main__':
	main()