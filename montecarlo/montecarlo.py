#!/usr/bin/python
from operator import add
import numpy as np

def main():
	#Change these to change which files to simulate with
	inp('ATP_mc')
	age_range("bdia_mc0",10,"   %9.6f")
	age_range("Bstk_mc0",10,"   %9.6f")
	age_range("B_mc0",10,"   %9.6f")
	age_range("QOL_mc0",0,"   %6.4f")
	cst("cstval",3,"      %8.2f")


def age_range(fname,spaces,format):
	""" Create normally distributed data file from .dat, std files
	of the same format.
		
	Creates {fname}.mc from {fname}.dat

	Args:
		fname: a string representing the name of a .dat file
		spaces: integer number of spaces before the leftmost number
		format: format string defining the way to output numbers to the output file
	"""	
	with open("modfile/" + fname + '.dat') as f:
		means = f.readlines()
	with open("modfile/" + fname + '.dat') as f:
		std = f.readlines()
	f = open('modfile/' + fname + '.mc','w')
	for l1,l2 in zip(means,std):
		sp1 = l1.split()
		sp2 = l2.split()
		if len(sp1) > 1 and sp1[0] >= '1' and sp1[0] <= '9': 	#if we're in section with numbers
			sp_out = [float(x)+np.random.randn()*float(y) for x,y in zip(sp1[1:],sp2[1:])]
			fstring = format*len(sp_out)
			print>>f, ' '*spaces + sp1[0],
			print>>f, fstring % tuple(sp_out)
		else: 	#if we're not in section with numbers just replace line
			print>>f, l1,
	f.close()

def cst(fname,spaces,format):
	""" Create lognormally distributed data file from mean, std files
	of the same format.
		
	Creates {fname}.mc from {fname}.dat. Specifically for cost files
	
	Args:
		fname: a string representing the name of a .dat file
		spaces: integer number of spaces before the leftmost number
		format: format string defining the way to output numbers to the output file
	"""	
	with open("modfile/" + fname + '.dat') as f:
		means = f.readlines()
	with open("modfile/" + fname + '.dat') as f:
		std = f.readlines()
	f = open('modfile/' + fname + '.mc','w')
	for l1,l2 in zip(means,std):
		sp1 = l1.split()
		sp2 = l2.split()
		print sp1
		print sp2
		if len(sp1) > 1 and sp1[0][0] >= '0' and sp1[0][0] <= '9':	 #if we're in section with numbers
			sp_out = [float(x)+np.random.randn()*float(y) for x,y in zip(sp1,sp2)]
			print sp_out
			fstring = format*len(sp_out)
			print>>f, fstring % tuple(sp_out)
		else:  #if we're not in section with numbers just replace line
			print>>f, l1,
	f.close()

def inp(fname):
	""" Create normally distributed input file from a .inp file
	and related 
		
	Creates {fname}.mc from {fname}.inp. Specifically for the .inp file
	
	Args:
		fname: a string representing the name of a .dat file
	"""	
	with open(fname + '.sdind') as f:
		rd = f.readlines()
	std = []
	for line in rd:
		sp = line.split(',')
		std.append((sp[0], sp[1]))  #collects keywords and standard deviations as tuples
	with open(fname + '.inp') as f:
		means = f.readlines()

	f = open(fname + '.mc','w')
	for line in means:
		replace = 0
		for tup in std:
			if line.find(tup[0])!=-1:
				if replace == 1:
					print "error: keywords overlap"
				out = float(line.split()[0]) + np.random.randn()*float(tup[1])
				print>>f, out
				replace = 1
		if replace == 0:
			print>>f, line,
	f.close()

if __name__ == '__main__':
    main()