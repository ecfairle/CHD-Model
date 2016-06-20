import sys
import re

fname = argv[2] + ".chd"
outfile = open(fname,'w')
outfile.write('CHD Deaths (Bridge)')
outfile.write('Year   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94   M35-44   M45-54   M55-64   M65-74   M75-84   M85-94   F35-44   F45-54   F55-64   F65-74   F75-84   F85-94')
def save_lines(n):
	for i in range(n,n+6):
		data[i] = data[i].replace('. ', '') 
		all_data = [s for s in data[i].split()] 

with open('base_ef.out', 'r') as myfile:
    data = myfile.readlines()

i = 0
for line in data:
	i+=1
	if line.find("CHD Deaths (Bridge)  ")!=-1:
		save_lines(i+6)
