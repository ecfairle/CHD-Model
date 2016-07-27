#!/usr/bin/env python
from __future__ import print_function

import sys
import os.path
import re

#line of .outfile to look for base year
BASE_YEAR_LINE = 9 

#max lines after a title to look for 
#a block of values (excluding when specified)
MAX_LINES_AFTER = 15 

def main():
	checkInput()
	
	output_extension = '.frmt'
	filename = sys.argv[1]
	reformatter = Reformatter(filename,output_extension)
	
	reformatter.format("NEW CHD CASES",2)
	reformatter.format("CVD PREVALENCE - first of year",1,["Prevalence"])
	reformatter.format("NEW INTERVENED CHD CASES",2)
	reformatter.format("NUMBER TREATED",2,["DE","DH"])
	reformatter.format("CHD DEATHS",2)
	reformatter.format("CHD Deaths (Bridge)",3)
	reformatter.format("Acute CHD Death 11-17",3)
	reformatter.format("Acute CHD Death 1-10",3)
	reformatter.format("Acute CHD Deaths (Bridge & DH)",3,["Arrest","MI","Revasc"])
	reformatter.format("Acute CHD Deaths (Bridge)",3,
					["MI","Arrest In-Hospital","Arrest Pre-Hospital"])
	reformatter.format("Chronic CHD Death",3)
	reformatter.format("Non-CVD Death",2)
	reformatter.format("Non-CVD Death (DE)",3)
	reformatter.format("DE Intervened Non-CVD Deaths", 3)
	reformatter.format("Non-CVD Death (DH)",3)
	reformatter.format("Total Pop (DE)",1)
	reformatter.format("Total Pop (DH 11-17)",1)
	reformatter.format("Total Pop (DH 1-10)",1)
	reformatter.format("Total DE Diabetes Pop",1)
	reformatter.format("NEW DIABETES CASES",2)
	reformatter.format("CVD EVENTS", 4, ["ANGINA", "ARREST", "MI", "STROKE"],17)
	reformatter.format("Revascularization Events",4,
					["AMI CABG","AMI PTCA","ISO CABG","ISO PTCA"],)
	reformatter.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["ANGINA","REVSC","MI","TBD"])
	reformatter.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["REVSC + MI","TBD","TBD","TBD"],15)
	reformatter.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["TOT/ISC","MT+STROKE","BRIDGE MI","BRIDGE MI + ARR"],26)
	reformatter.format("CVD POPULATION DISTRIBUTION BY STATE",4,
					["BRIDGE ARREST","BRIDGE ANGINA","BRIDGE MI + REVSC","BRIDGE TOT STROKE"],37)
	reformatter.format("CVD POPULATION DISTRIBUTION BY STATE",1,["BRIDGE HEM STROKE"],48)
	reformatter.format("Total MI",1)
	reformatter.format("Bridge MI",1)
	reformatter.format("DH First MI (1,2,14)",1)
	reformatter.format("First MI",1)
	reformatter.format("Total MI",1)
	reformatter.format("DH 2nd MI (11,12,15, and dhxevt)",1)
	reformatter.format("DH Re-MI (3-8,11-13,15)",1)
	reformatter.format("DH MI Stroke (9,10,16,17)",1)
	reformatter.format("TOTAL STROKE",2)
	reformatter.format("BRIDGE STROKE",2)
	reformatter.format("NEW INTERVENED STROKE CASES",2)
	reformatter.format("First Stroke (DH ONLY)",2)
	reformatter.format("STROKE DEATHS",2)
	reformatter.format("TOTAL DEATHS",2)
	reformatter.format("NON-CVD Costs",1,["BACKGROUND HEALTHCARE COST"],5)
	reformatter.format("TOTAL CHD COSTS",1,["Age/Sex Breakdown($)"],12)
	reformatter.format("TOTAL PREVENTION COSTS",1,["Age/Sex Breakdown($)"],6)
	reformatter.format("TOTAL STROKE COSTS",1,["Age/Sex Breakdown($)"],5)
	reformatter.format("Total QALY",1,["Age/Sex Breakdown"],6)
	reformatter.format("Total DH QALY",1,["Age/Sex Breakdown"],6)


def checkInput():
	if len(sys.argv) < 2:
		print("Input file name: e.g. 'format.py [filename]'")
		sys.exit()

	if not os.path.isfile(sys.argv[1] + ".out"):
		print("Invalid File Name")
		print("Execute by typing 'format.py [filename]'")
		sys.exit()


class Reformatter(object):
	"""Used to build formatted file from .out file

	Attr:
		topline: list of headers within categories
		formatted_file: file to be written to
		outfile: CVDOutfile object containing information for .out file
		*_format: format string based on number of total categories
	"""

	def __init__(self,filename,ext):
		self.topline = ['M35-44', 'M45-54', 'M55-64', 'M65-74', 'M75-84', 'M85-94', 
			'F35-44',  'F45-54',  'F55-64',   'F65-74',  'F75-84',  'F85-94']
		self.formatted_file = open(filename + ext,'w')
		self.outfile = CVDOutfile(filename)
		self.topline_format = lambda categories: 'Year{:>12} ' + '{:>15} '*(12*categories-1)
		self.num_format = lambda categories: '{}{:>12} ' + '{:>15} '*(12*categories-1)
		self.category_format = lambda categories: '    {:>12}' + '{:>192}'*(categories-1)
	
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

	def _write_topline(self, title, categories, ctg_list):
		self._file_write(title)
		if ctg_list:
			full_cat_format = self.category_format(categories)
			self._file_write(full_cat_format.format(*ctg_list))

		topline_full = self._make_topline(categories)
		full_top_format = self.topline_format(categories)
		self._file_write(full_top_format.format(*topline_full))

	def _make_topline(self, categories):
		topline_full = []
		for i in range(categories):
			topline_full += self.topline
		return topline_full

	def _file_write(self, string):
		print(string,file=self.formatted_file)

	def _format_blocks(self, categories, linesdown, title):
		cur_year = 0
		for line_num in range(self.outfile.num_lines):
			if self.outfile.find_title(line_num,title):
				self._format_block(line_num,cur_year,categories, linesdown)
				cur_year+=1
		self._file_write("\n")	

	def _format_block(self, line_num, cur_year, categories, linesdown):
		start_line = (linesdown + line_num if linesdown!=0 else 
								self.outfile.next_num_line(line_num))
		num_list = self.outfile.get_number_list(start_line,categories)
		self._format_num_line(categories,num_list,cur_year)

	def _format_num_line(self, categories,num_list,cur_year):
		full_format = self.num_format(categories)
		self._file_write(full_format.format(self.outfile.base_year + cur_year,*num_list))


class CVDOutfile:
	"""Contains information of .out file

	Attr:
		lines_list: list of lines in .out file
		base_year: integer first year of simulation
		num_lines: integer number of lines in lines_list
	"""

	def __init__(self,filename):
		self.lines_list = self._get_lines(filename)
		self.base_year = int(self.lines_list[BASE_YEAR_LINE])
		self.num_lines = len(self.lines_list)

	def _get_lines(self,filename):
		with open(filename + ".out", 'r') as myfile:
			return myfile.readlines()

	def find_title(self, line_num, title):
		return (self.lines_list[line_num].find(title + "     ") != -1 or 
			self.lines_list[line_num].find(title + "\n") != -1 and 
			self.lines_list[line_num].find("Acute " + title) == -1)

	def _replace_bad_chars(self, start_line):
		"""Fix section of numbers"""
		for i in range(start_line, start_line + 6):
			self.lines_list[i] = self.lines_list[i].replace('. ', '') 
			self.lines_list[i] = self.lines_list[i].replace('.\n','')
			#this is for CVD prevalence -- don't want 'x/y' just want rate
			self.lines_list[i] = re.sub(r'[0-9]*./ \s*[0-9]*','',
												self.lines_list[i])
 
	def next_num_line(self, line_num):
		for i in range(MAX_LINES_AFTER):
			line_length = len(self.lines_list[i + line_num].split())
			if line_length > 0:
				first_char = self.lines_list[i + line_num].split()[0][0]
				if str.isdigit(first_char):
					return i + line_num
		return -1

	def get_number_list(self, start_line, categories):
		self._replace_bad_chars(start_line)
		block = NumBlock(self.lines_list[start_line:start_line+6],categories)
		return block.get_list()

	def get_line(self,line_num):
		return self.lines_list[line_num]


class NumBlock:
	"""Block of values for one year in .out file
	
	Attr:
		num_list: list of the values
	"""
	def __init__(self,lines,categories):
		self.num_list=[]
		self._parse_block(lines)
		self._reorder_block(categories)

	def _reorder_block(self, categories):
		"""Puts block in desired order for printing"""
		reordered = []
		for i in range(categories*2):
			for j in range(6):
				reordered.append(self.num_list[i + (categories*2 + 1)*j + 1])
		self.num_list = reordered

	def _parse_block(self,lines):
		for i in range(6):
			split_line = lines[i].split()
			self.num_list += [num for num in split_line]

	def get_list(self):
		return self.num_list


if __name__ == '__main__':
    main()