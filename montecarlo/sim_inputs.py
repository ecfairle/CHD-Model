#!/usr/bin/env python
from __future__ import print_function
from operator import add
import numpy as np
import sys
import re


def main():
	#Change these to change which files to simulate with
	files = re.findall(r"[\w']+",sys.argv[1])
	if len(sys.argv)>2 and sys.argv[2]=='0':
		test = 0
	else:
		test = 1

	varier = VaryInp(test)
	for f in files:
		varier.vary(f)

class VaryInp:
	""" Create normally varied .inp file.

	Attributes:
		mc: File to output MC simulated data to
		rd: List of lines in standard deviation file
		means: List of lines in original file
		std: List of (key, value) tuples from standard dev. file
	"""

	def __init__(self,test):
		self.rd = read_lines('effect_mc.txt')
		self.std = []
		self._build_std()
		self.rnd = np.random.randn(len(self.std))*test
		
	def _build_std(self):		
		for line in self.rd:
			sp = line.split(',')
			self.std.append((sp[0], sp[1]))

	def _setup_files(self,fname):
		self.means = read_lines(fname + '_mc0.inp')
		self.mc = open(fname + '_mc.inp','w')

	def vary(self,fname):
		self._setup_files(fname)
		for line in self.means:
			self._vary_line(line)
		self.mc.close()

	def _vary_line(self,line):
		replace = 0
		for i,tup in enumerate(self.std):
			if self._find_keyword(line,tup[0]):
				if replace == 1:
					print("error: keywords overlap")
					sys.exit()
				out = float(line.split()[0]) + self.rnd[i]*float(tup[1])*float(line.split()[0])
				print("{:<8.6f}".format(out), file=self.mc)
				replace = 1
		if replace == 0:
			replace_line(self.mc,line)

	def _find_keyword(self,line,key):
		return line.find(key)!=-1


def replace_line(f,line):
	f.write(line)


def is_num_line(line):
	return len(line) > 0 and line[0][0] >= '0' and line[0][0] <= '9'


def read_lines(fname):
	with open(fname) as f:
		return f.readlines()


if __name__ == '__main__':
    main()