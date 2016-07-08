#!/usr/bin/env python
from operator import add
import numpy as np


def main():
	#Change these to change which files to simulate with
	VaryInp('SBP1').vary()
	VaryDat("Bdia").vary()
	VaryDat("Bstk",lines=2).vary()
	VaryDat("B",lines=2).vary()
	VaryDat("qol",5,"   %6.4f").vary()
	#VaryCst("cstval").vary()

class Varier:
	"""Vary data file according to distribution


	Attributes:
		fname: A string representing the name of a .dat file
		spaces: Integer number of spaces before the leftmost number
		format: Format string defining the way to output numbers to the output 
		file
	"""	
	def __init__(self, fname, spaces, format, lines=1):
		self.mc0 = open('modfile/' + fname + '_mc.dat','w')
		self.save = open('modfile/' + 'MC' + fname + '.txt','a')
		self.means = read_lines(fname + '_mc.dat')
		self.std = read_lines(fname + '_mc.dat')
		self.spaces = spaces
		self.lines = lines
		self.format = format

	def _format_lst(self,f, _lst):
		fstring = ' '*self.spaces + self.format*len(_lst)
		print>>f, fstring % tuple(_lst)

	def vary(self):
		for mean_line,std_line in zip(self.means,self.std):
			self._vary_line(mean_line,std_line)
		self.mc0.close()

	def _vary_line(self,mean_line,std_line):
		sp_mean_line = mean_line.split()
		sp_std_line = std_line.split()
		if is_num_line(sp_mean_line):
			sp_out = self._dist(sp_mean_line,sp_std_line)
			self._format_lst(self.mc0,sp_out)
		else: 
			replace_line(self.mc0,mean_line)

	def _dist(self, *dist_args): pass

class VaryDat(Varier):
	""" Create normally distributed data file from .dat file, std file
	of the same format.
		
	Creates *_mc.dat from *_mc0.dat

	Attributes:
		fname: A string representing the name of a .dat file
		spaces: Integer number of spaces before the leftmost number
		format: Format string defining the way to output numbers to the output 
		file
	"""	

	def __init__(self, fname, spaces=11, format="   %9.6f", lines=1):
		Varier.__init__(self,fname, spaces, format, lines)
		self.n_line = 0


	def _dist(self, mean, std):
		if self.n_line%6 == 0:
			self.rnd = np.random.randn(len(mean)-1)
		rnd_out = [float(x[0])+self.rnd[i]*float(x[1]) for i,
						x in enumerate(zip(mean[1:],std[1:]))]

		if self.n_line/6 < self.lines and self.n_line%6 == 0:
			self._format_lst(self.save,rnd_out)

		self.n_line += 1
		return rnd_out



	
class VaryCst(Varier):
	""" Create lognormally distributed data file from mean, std files
	of the same format.
		
	Creates cstval_mc.mc from cstval_mc0.dat. Specifically for cost files
	
	Attributes:
		fname: A string representing the name of a .dat file
		spaces: Integer number of spaces before the leftmost number
		format: Format string defining the way to output numbers to the output 
		file
	"""	

	def __init__(self, fname, spaces=3, format="%-8.2f       "):
		Varier.__init__(self,fname, spaces, format)

	def _dist(self, mean, st): 
		rnd = np.random.randn()
		return [max(float(x)+rnd*float(y),0) for x,y in zip(mean,st)]


class VaryInp:
	"""

	Attributes:
		means: list of lines in original file
		std: list of lines in standard deviation file

	"""

	def __init__(self, fname):
		self.f = open(fname + '_mc.inp','w')
		self.rd = read_lines(fname + '.sdind')
		self.means = read_lines(fname + '_mc0.inp')
		self.std = []
		self._build_std()
		
	def _build_std(self):		
		for line in self.rd:
			sp = line.split(',')
			self.std.append((sp[0], sp[1]))

	def vary(self):
		for line in self.means:
			self._vary_line(line)
		self.f.close()

	def _vary_line(self,line):
		replace = 0
		rnd = np.random.randn(len(self.std))
		for i,tup in enumerate(self.std):
			if self._find_keyword(line,tup[0]):
				if replace == 1:
					print "error: keywords overlap"
				out = float(line.split()[0]) + rnd[i]*float(tup[1])
				print>>self.f, out
				replace = 1
		if replace == 0:
			replace_line(self.f,line)

	def _find_keyword(self,line,key):
		return line.find(key)!=-1


def replace_line(f,line):
	print>>f, line,


def is_num_line(line):
	return len(line) > 0 and line[0][0] >= '0' and line[0][0] <= '9'


def read_lines(fname):
	if fname[-3:] == 'dat':
		with open("modfile/" + fname) as f:
			return f.readlines()
	else:
		with open(fname) as f:
			return f.readlines()


if __name__ == '__main__':
    main()