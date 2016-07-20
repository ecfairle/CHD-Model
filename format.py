#!/usr/bin/env python
from __future__ import print_function

import sys
import os.path
import re


def main():
	checkInput()
	
	reform = Reformatter(sys.argv[1] + '.frmt')
	
	reform.format("NEW CHD CASES",2)
	reform.format("CVD PREVALENCE - first of year",1,["Prevalence"])
	reform.format("NEW INTERVENED CHD CASES",2)
	reform.format("NUMBER TREATED",2,["DE","DH"])
	reform.format("CHD DEATHS",2)
	reform.format("CHD Deaths (Bridge)",3)
	reform.format("Acute CHD Death 11-17",3)
	reform.format("Acute CHD Death 1-10",3)
	reform.format("Acute CHD Deaths (Bridge & DH)",3,["Arrest","MI","Revasc"])
	reform.format("Acute CHD Deaths (Bridge)",3,
					["MI","Arrest In-Hospital","Arrest Pre-Hospital"])
	reform.format("Chronic CHD Death",3)
	reform.format("Non-CVD Death",2)
	reform.format("Non-CVD Death (DE)",3)
	reform.format("DE Intervened Non-CVD Deaths", 3)
	reform.format("Non-CVD Death (DH)",3)
	reform.format("Total Pop (DE)",1)
	reform.format("Total Pop (DH 11-17)",1)
	reform.format("Total Pop (DH 1-10)",1)
	reform.format("Total DE Diabetes Pop",1)
	reform.format("NEW DIABETES CASES",2)
	reform.format("CVD EVENTS", 4, ["ANGINA", "ARREST", "MI", "STROKE"],17)
	reform.format("Revascularization Events",4,
					["AMI CABG","AMI PTCA","ISO CABG","ISO PTCA"],)
	reform.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["ANGINA","REVSC","MI","TBD"])
	reform.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["REVSC + MI","TBD","TBD","TBD"],15)
	reform.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["TOT/ISC","MT+STROKE","BRIDGE MI","BRIDGE MI + ARR"],26)
	reform.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["BRIDGE ARREST","BRIDGE ANGINA","BRIDGE MI + REVSC","BRIDGE TOT STROKE"],37)
	reform.format("CVD POPULATION DISTRIBUTION BY STATE",1,["BRIDGE HEM STROKE"],48)
	reform.format("Total MI",1)
	reform.format("Bridge MI",1)
	reform.format("DH First MI (1,2,14)",1)
	reform.format("First MI",1)
	reform.format("Total MI",1)
	reform.format("DH 2nd MI (11,12,15, and dhxevt)",1)
	reform.format("DH Re-MI (3-8,11-13,15)",1)
	reform.format("DH MI Stroke (9,10,16,17)",1)
	reform.format("TOTAL STROKE",2)
	reform.format("BRIDGE STROKE",2)
	reform.format("NEW INTERVENED STROKE CASES",2)
	reform.format("First Stroke (DH ONLY)",2)
	reform.format("STROKE DEATHS",2)
	reform.format("TOTAL DEATHS",2)
	reform.format("NON-CVD Costs",1,["BACKGROUND HEALTHCARE COST"],5)
	reform.format("TOTAL CHD COSTS",1,["Age/Sex Breakdown($)"],12)
	reform.format("TOTAL PREVENTION COSTS",1,["Age/Sex Breakdown($)"],6)
	reform.format("TOTAL STROKE COSTS",1,["Age/Sex Breakdown($)"],5)
	reform.format("Total QALY",1,["Age/Sex Breakdown"],6)
	reform.format("Total DH QALY",1,["Age/Sex Breakdown"],6)


def checkInput():
	if len(sys.argv) < 2:
		print("Input file name: e.g. 'format.py filename'")
		sys.exit()

	if not os.path.isfile(sys.argv[1] + ".out"):
		print("Invalid File Name")
		print("Execute by typing 'format.py filename'")
		sys.exit()


class Reformatter(object):
	"""Used to build formatted .frmt file from .out file

	"""

	def __init__(self,outfile_name):
		self.topline = ['M35-44', 'M45-54', 'M55-64', 'M65-74', 'M75-84', 'M85-94', 
			'F35-44',  'F45-54',  'F55-64',   'F65-74',  'F75-84',  'F85-94']
		self.outfile = open(outfile_name,'w')
		self.lines_list = self._get_lines()
		self.base_year = int(self.lines_list[9])
		self.topline_format = lambda categories: 'Year{:>12} ' + '{:>15} '*(12*categories-1)
		self.num_format = lambda categories: '{}{:>12} ' + '{:>15} '*(12*categories-1)
		self.category_format = lambda categories: '    {:>12}' + '{:>192}'*(categories-1)
		self.max_lines_after = 15
	
	def format(self, title, categories, ctg_list=[], linesdown=0):
		""" Reformats sections with particular label

		Args:
			title: String to look for to reformat
			ctg_list: List of categories to search for (e.g. ANGINA, ARREST, MI)
			categories: Integer number of categories
			linesdown: Integer number of lines below the title to search for block
			(only used if it doesn't make sense to find next line starting with numbers)
		"""
		
		self._write_topline(title,categories,ctg_list)
		self._format_blocks(categories,linesdown,title)  

	def _get_lines(self):
		with open(sys.argv[1] + ".out", 'r') as myfile:
			return myfile.readlines()

	def _find_title(self, line, title):
		return (line.find(title + "     ") != -1 or 
			line.find(title + "\n") != -1 and 
			line.find("Acute " + title) == -1)

	def _find_topline(self, categories):
		topline_full = []
		for i in range(categories):
			topline_full += self.topline
		return topline_full

	def file_write(self, string):
		print(string,file=self.outfile)

	def _write_topline(self, title, categories, ctg_list):
		self.file_write(title)
		if ctg_list:
			full_cat_format = self.category_format(categories)
			self.file_write(full_cat_format.format(*ctg_list))

		topline_full = self._find_topline(categories)
		full_top_format = self.topline_format(categories)
		self.file_write(full_top_format.format(*topline_full))

	def _format_blocks(self, categories, linesdown, title):
		cur_year = 0
		for line_num,line in enumerate(self.lines_list):
			if self._find_title(line,title):
				self._format_block(line_num,cur_year,categories, linesdown)
				cur_year+=1
		self.file_write("\n")	

	def _format_block(self, line_num, cur_year, categories, linesdown):
		start_line = linesdown + line_num if linesdown!=0 else self._next_num_line(line_num)
		num_list = self._get_number_list(start_line,categories)
		self._format_num_line(categories,num_list,cur_year)

	def _format_num_line(self, categories,num_list,cur_year):
		full_format = self.num_format(categories)
		self.file_write(full_format.format(self.base_year + cur_year,*num_list))

	def _get_number_list(self, start_line, categories):
		num_list = []
		self._replace_bad_chars(start_line)
		for i in range(6):
			split_line = self.lines_list[i + start_line].split()
			num_list += [num for num in split_line]
		return self._reorder_list(num_list,categories)

	def _reorder_list(self, num_list, categories):
		reordered = []
		for i in range(categories*2):
			for j in range(6):
				reordered.append(num_list[i + (categories*2 + 1)*j + 1])
		return reordered

	def _replace_bad_chars(self, start_line):
		for i in range(start_line, start_line + 6):
			self.lines_list[i] = self.lines_list[i].replace('. ', '') 
			self.lines_list[i] = self.lines_list[i].replace('.\n','')
			#this is for CVD prevalence -- don't want 'x/y' just want rate
			self.lines_list[i] = re.sub(r'[0-9]*./ \s*[0-9]*','',
												self.lines_list[i])

	def _next_num_line(self, line_num):
		for i in range(self.max_lines_after):
			if len(self.lines_list[i + line_num].split()) == 0:
				continue
			first_num = self.lines_list[i + line_num].split()[0][0]
			if str.isdigit(first_num):
				return i + line_num
		return -1


if __name__ == '__main__':
    main()
