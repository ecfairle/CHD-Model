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
	VFile.save = args.save

	dat_files = read_lines('datfiles.txt')
	for fname in dat_files:
		datfile = DatFile(fname)
		if not args.zero_run:
			datfile.vary()
		datfile.print_mc()

	inp_files = parse_list(args.inpfiles)
	for fname in inp_files:
		inpfile = InpFile(fname)
		if not args.zero_run:
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


def invalid_distribution_error(dist_name):
	print("Invalid distribution: " + dist_name)
	print("Valid distributions include: Normal, LogNormal, Beta, and Gamma")
	sys.exit()


def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False


class VFile(object):
	"""Base class for files to be varied

	Attr:
		mc_file: File to write varied output to
		lines: Raw lines of mc0 file
		frmt_str: String to format data lines
		save: Boolean flag - if True save variation info
	"""
	save = False

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
		self.sdfile = SDFile(fname)
		self.frmt_str = ''
		self.lead_spaces = 0
		self.set_format(fname)

	def vary_line(self,line_num):
		means = self.lines[line_num].split()
		if is_data_line(means):
			variation = self.sdfile.get_variation(line_num)
			means = [float(mean) for mean in means[1:]]
			varied = [float(m + sd) for m,sd in zip(means,variation)]
			formatted = self.format_line(varied)
			self.replace_line(formatted,line_num)

	def set_format(self,fname):
		"""Set 'frmt_str' based on last line of dat file"""
		frmt_line = self._read_format_line(fname)
		self.frmt_str = self._parse_format(frmt_line)

	def _read_format_line(self,fname):
		return self.lines[-1]

	def _parse_format(self,string):
		"""Parse formatting information from raw string"""
		spaces = re.findall(r'(\d+)x',string)
		self.lead_spaces,num_spaces = [int(x) for x in spaces[:2]]
		num_format = re.findall(r'f([0-9.]+)',string)[0]
		return ('{{:<{0}f}}'.format(num_format) 
				+ ' '*int(num_spaces))


class SDFile(object):
	"""Standard deviations for .dat files

	Same format as .dat file
	Attr:
		lines: Raw lines in file
		block_nums: List of block indices for each data line
		num_blocks: Integer number of blocks in file
		rnd: List of normally distributed random variables for each sd
	"""

	def __init__(self,fname):
		sdpath = os.path.join('modfile',fname + 'sd.dat')
		self.lines = read_lines(sdpath)
		self.block_nums = [-1]*len(self.lines)
		self.num_blocks = 0
		self._set_block_nums()
		self.cols = self._count_cols()
		self.rnd = np.random.randn(self.num_blocks/2,self.cols)

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

	def get_variation(self,line_num):
		"""Returns list of variations for line 'line_num'"""
		block_num = self.get_block_num(line_num)
		sds = self.lines[line_num].split()
		return [float(sd)*self.rnd[block_num%2,i] for i,sd in enumerate(sds[1:])]


class InpFile(VFile):
	"""Varying .inp file

	Attr:
		effects: Effects object containing variation data
	"""

	def __init__(self,fname):
		VFile.__init__(self,fname + '.inp')
		self.effects = Effects()
		self.frmt_str = '{:<8.6f}'
		self.lead_spaces = 0

	def vary_line(self,line_num):
		line = self.lines[line_num]
		varied = self.effects.get_val(line)
		if varied != None:
			formatted = self.format_line([varied])
			self.replace_line(formatted,line_num)


class Effects(object):
	"""Contains data from effects_mc.txt

	Used to vary .inp file.
	effects_mc.txt format can be found on github.com/ecfairle/CHDMOD
	Attr:
		key_result_pairs: Dict of key->varied value pairs - replace lines
			containing 'key' with 'key_result_pairs[key]'
		lines: Raw lines of effect_mc.txt
	"""

	def __init__(self):
		self.key_result_pairs = {}
		self.lines = read_lines('effect_mc.txt')
		self._generate_pairs()

	def _generate_pairs(self):
		data_lines = self.lines[1:]
		line_num = 0
		while line_num < len(data_lines):
			key,num_lines = data_lines[line_num].split(',')
			num_lines = int(num_lines)

			component_lines = data_lines[line_num + 1:line_num + num_lines + 1]
			line_num += num_lines + 1  # skip past component lines

			self.key_result_pairs[key] = self._sum_components(component_lines)

	def _sum_components(self,component_lines):
		"""Sum samples from each component distribution"""
		s = 0
		for line in component_lines:
			effects = Dist(line)
			s += effects.sample()
		return s

	def get_val(self,line):
		"""Return varied value appropriate for line, else None"""
		for key,varied in self.key_result_pairs.iteritems():
			if line.find(key)!=-1:
				self._test_for_repeats(key,line)
				return varied
		return None

	def _test_for_repeats(self,key,line):
		"""Make only one key found in line"""
		other_keys = [k for k in self.key_result_pairs.keys() if k!=key]
		if any(line.find(k)!=-1 for k in other_keys): 
			print('keys overlap -- keys must be unique to'
								 'achieve desired behavior')
			sys.exit()


class Dist(object):

	def __init__(self,data_line):
		parts = data_line.split(',')
		if is_number(parts[0]):  #if first listing is a number, assume normal distribution
			self.set_dist('norm')
			params = parts
		else: 
			self.set_dist(parts[0])
			params = parts[1:]

		self.params = [float(p) for p in params[:self.num_params]]

		bounds = params[self.num_params:]
		self.lower_bound = self.get_lower(bounds)
		self.upper_bound = self.get_upper(bounds)


	def get_lower(self,bounds):
		try:
			lower_bound = bounds[0]
			return float(lower_bound)
		except (ValueError,IndexError):
			return float("-inf")

	def get_upper(self,bounds):
		try:
			upper_bound = bounds[1]
			return float(upper_bound)
		except (ValueError,IndexError):
			return float("inf")

	def set_dist(self,dist_name):
		dist_name = dist_name.strip().lower()
		if dist_name == 'norm' or dist_name == 'normal' or dist_name == '':
			self.name = 'NORMAL'
			self.fn = np.random.normal
			self.num_params = 2

		elif dist_name == 'lognormal':
			self.name = 'LOGNORMAL'
			self.fn = np.random.lognormal
			self.num_params = 2

		elif dist_name == 'beta' or dist_name == 'b':
			self.name = 'BETA'
			self.fn = np.random.beta
			self.num_params = 2

		elif dist_name == 'gamma':
			self.name = 'GAMMA'
			self.fn = np.random.gamma
			self.num_params = 2

		else:
			invalid_distribution_error(dist_name) 

	def sample(self):
		val = self.fn(*self.params)
		if val > self.upper_bound:
			return self.upper_bound
		elif val < self.lower_bound:
			return self.lower_bound
		else:
			return val


if __name__ == '__main__':
	main()