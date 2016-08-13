#!/usr/bin/env python
from __future__ import print_function
from operator import add
import argparse
import collections
import numpy as np
import os.path
import re
import sys


def main():
	args = parse_args()
	VFile.save = args.save
	VFile.zero_run = args.zero_run

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
							'anything other than letters/numbers '
							'(e.g. \'base,1000,2000\')')
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
		self.rnd = np.random.randn(self.num_blocks//2,self.cols)

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
				self.block_nums[i] = n_line//6
				n_line += 1
		self.num_blocks = n_line//6

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
		if self.save:
			self.save_lines()

	def save_lines(self):
		if self.zero_run:
			self.effects.print_labels()
		self.effects.print_data()

	def vary_line(self,line_num):
		line = self.lines[line_num]

		line_data =  self.effects.get_data(line)

		if line_data != None:
			varied,add_mean = line_data
			mean = float(line.split()[0])

			if add_mean:
				varied = mean + mean*varied

			formatted = self.format_line([varied])
			self.replace_line(formatted,line_num)


class Effects(object):
	"""Contains data from effects_mc.txt

	Used to vary .inp file.
	effects_mc.txt format can be found on github.com/ecfairle/CHDMOD
	Attr:
		key_result_pairs: Dict of key->data pairs - where
			key_result_pairs[key][0]' replaces the value on the current line
			and 'key_result_pairs[key][1]' indicates whether to add the mean
			on the current line
		lines: Raw lines of effect_mc.txt
	"""

	save_file_name = 'modfile/MC.txt'

	def __init__(self):
		self.key_result_pairs = collections.OrderedDict()
		self.lines = []
		self._read_lines()
		self._generate_pairs()

	def print_data(self):
		vals = [data[0] for key,data in self.key_result_pairs.items()]
		format_str = '{:<16.7f}  '*len(vals)
		with open(self.save_file_name,'a') as f:
			f.write(format_str.format(*vals) + '\n')

	def print_labels(self):
		labels = [key for key in self.key_result_pairs]
		format_str = '{:<16}  '*len(labels)
		with open(self.save_file_name,'a') as f:
			f.write(format_str.format(*labels) + '\n')


	def _read_lines(self):
		file_lines = read_lines('effect_mc.txt')
		for line in file_lines:
			data = line.split('#')[0].strip()
			if len(data) != 0:
				self.lines.append(data)

	def num_lines(self):
		return len(self.lines)

	def _generate_pairs(self):
		# ignore everything after '#'
		line_num = 0
		while line_num < self.num_lines():
			key,num_lines = self.lines[line_num].split(',')
			num_lines = int(num_lines)

			component_lines = self.lines[line_num + 1:line_num + num_lines + 1]
			line_num += num_lines + 1  # skip past component lines

			self.key_result_pairs[key] = self._sum_components(component_lines)

	def _sum_components(self,component_lines):
		"""Sum samples from each component distribution"""
		s = 0
		add_mean = False
		for line in component_lines:
			dist = Dist(line)
			s += dist.sample()
			if dist.depends_on_mean_line():
				add_mean = True
			
		if add_mean and len(component_lines) != 1:
			print('error: the MEAN placeholder only makes sense when '
				'the label contains a single component')
			sys.exit()

		return s, add_mean

	def get_data(self,line):
		"""Return varied value appropriate for line, else None"""
		for key,varied in self.key_result_pairs.items():
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

	group_state = {}

	def __init__(self,data_line):
		parts = data_line.split(',')
		parts[0] = parts[0].strip()

		self.group = None
		if self.set_group(parts[0]):
			parts = parts[1:]

		# if first listing (after group) is a number, assume normal distribution
		if is_number(parts[0]) or parts[0].upper() == 'MEAN':  
			self.set_dist('norm')
			params = parts
		else: 
			self.set_dist(parts[0])
			params = parts[1:]

		if self.name == 'NORMAL' and params[0].upper() == 'MEAN':
			self.fn = np.random.randn
			self.params = float(params[1])
		else:
			self.params = [float(p) for p in params[:self.num_params]]

		bounds = params[self.num_params:]
		self.lower_bound = self.get_lower(bounds)
		self.upper_bound = self.get_upper(bounds)

	def depends_on_mean_line(self):
		return self.fn == np.random.randn

	def set_group(self,group_str):
		"""Sets group for component, returns True if successful"""
		match = re.search(r'g=(.+)',group_str)
		if match is not None:
			self.group = match.group(1).strip()
			if not self.group in self.group_state:
				self.group_state[self.group] = np.random.get_state()
			return True
		return False

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
		dist_name = dist_name.lower()
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
		if self.group:
			np.random.set_state(self.group_state[self.group])

		if self.fn == np.random.randn:
			val = self.fn()*self.params
		else:
			val = self.fn(*self.params)

		return self.threshold(val)
		
	def threshold(self,val):
		if val > self.upper_bound:
			return self.upper_bound
		elif val < self.lower_bound:
			return self.lower_bound
		else:
			return val


if __name__ == '__main__':
	main()