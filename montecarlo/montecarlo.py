#!/usr/bin/python
from operator import add
import numpy as np

def age_range(fname):
	with open("modfile/" + fname + ".dat") as f:
		means = f.readlines()
	with open("modfile/" + fname + ".dat") as f:
		std = f.readlines()
	for l1,l2 in zip(means,std):
		sp1 = l1.split()
		sp2 = l2.split()
		print sp1
		if len(sp1) > 1 and sp1[0] >= '1' and sp1[0] <= '6':
			print [float(x)+np.random.randn()*float(y) for x,y in zip(sp1[1:],sp2[1:])]

age_range("bdia_mc0")