import sys
import re

fname = sys.argv[1] + ".chb"
title = "CHD Deaths (Bridge)"
outfile = open(fname,'w')
outfile.write(title + '\n')
outfile.write('Year   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94\n')

def print_lines(n,y):
	frmt_data = []
	for i in range(n,n+6):
		data[i] = data[i].replace('. ', '') 
		frmt_data += [s for s in data[i].split()]
	outfile.write(str(base_year + y) )
	line = []
	for i in range(6):
		for j in range(6):
			line.append(frmt_data[i + 7*j + 1])
	outfile.write('{:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8} {:>8}'.format(*line) + "\n")

with open(sys.argv[1] + ".out", 'r') as myfile:
    data = myfile.readlines()

i = 0
years = 0
base_year = int(data[9])
for line in data:
	i+=1
	if line.find(title + "  ")!=-1:
		print_lines(i+6, years)
		years += 1