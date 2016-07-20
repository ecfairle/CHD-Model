#!/usr/bin/env python
from __future__ import print_function
from operator import add
import numpy as np
import sys


def main():
	#Change these to change which files to simulate with
	if len(sys.argv)>1 and sys.argv[1]=='0':
		test = 0
	else:
		test = 1

	VaryDat("Bdia",test).vary()
	VaryDat("Bstk",test,lines=2).vary()
	VaryDat("B",test,lines=2).vary()
	VaryDat("incdia",test,spaces=5,format="   %9.7f").vary()


class Varier:
	"""Vary data file according to distribution


	Attributes:
		mc: file to output MC simulated data to
		save: file to append lines to for checking validity of data
		lines: Integer number of lines to add to 'save' file
		spaces: Integer number of spaces before the leftmost number
		format: Format string defining the way to output numbers to the output 
		file
	"""	

	def __init__(self, fname, zero_run, spaces, format, lines=1):
		self.mc = open('modfile/' + fname + '_mc.dat','w')
		self.save = open('modfile/' + 'MC' + fname + '.txt','a')
		self.means = read_lines('modfile/' + fname + '_mc0.dat')
		self.std = read_lines('modfile/' + fname + 'sd.dat')
		self.spaces = spaces
		self.lines = lines
		self.format = format
		self.rnd = np.random.randn(2,10)*zero_run

	def make_rnd():
		for line in self.means:
			if is_num_line(line):
				return np.random.randn(2,len(line.split()))
		return []

	def _format_lst(self,f, _lst):
		fstring = ' '*self.spaces + self.format*len(_lst)
		print(fstring % tuple(_lst), file=f)
	def vary(self):
		for mean_line,std_line in zip(self.means,self.std):
			self._vary_line(mean_line,std_line)
		self.mc.close()

	def _vary_line(self,mean_line,std_line):
		sp_mean_line = mean_line.split()
		sp_std_line = std_line.split()
		if is_num_line(sp_mean_line):
			sp_out = self._dist(sp_mean_line,sp_std_line)
			self._format_lst(self.mc,sp_out)
		else: 
			replace_line(self.mc,mean_line)

	def _dist(self, *dist_args): pass


class VaryDat(Varier):
	""" Create normally distributed data file from .dat file, std file
	of the same format.
		
	Creates *_mc.dat from *_mc0.dat

	Attributes:
		Varier --
		n_line: Integer number of data lines parsed
	"""	

	def __init__(self, fname, test, spaces=11, format="   %9.6f", lines=1):
		Varier.__init__(self,fname, test, spaces, format, lines)
		self.n_line = 0


	def _dist(self, mean, std):
		block_num = int((self.n_line/6)%2)
		rnd_out = [float(x[0])+self.rnd[block_num,i]*float(x[1]) for i,
						x in enumerate(zip(mean[1:],std[1:]))]

		if self.n_line/6 < self.lines and self.n_line%6 == 0:
			self._format_lst(self.save,rnd_out)

		self.n_line += 1
		return rnd_out


def replace_line(f,line):
	f.write(line)


def is_num_line(line):
	return len(line) > 0 and line[0][0] >= '0' and line[0][0] <= '9'


def read_lines(fname):
	with open(fname) as f:
		return f.readlines()


if __name__ == '__main__':
    main()