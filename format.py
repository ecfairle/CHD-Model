#!/usr/bin/env python
from __future__ import print_function

import sys
import os.path
import re

#Line of .outfile to look for base year
BASE_YEAR_LINE = 9 


#Max lines after a title to look for 
#a block of values (excluding when specified)
MAX_LINES_AFTER = 15 

#List of age/sex groups for each category
TOP_LINE = ['M35-44', 'M45-54', 'M55-64', 'M65-74', 'M75-84', 'M85-94', 
	'F35-44',  'F45-54',  'F55-64',   'F65-74',  'F75-84',  'F85-94']

#Number of age ranges considered
AGE_RANGES = 6

def main():
	validateInput()
	
	output_extension = '.frmt'
	filename = sys.argv[1]
	outfile = CVDOutfile(filename)
	formatted_file = open(filename + output_extension,'w')

	reformatter = Reformatter(outfile,formatted_file)
	
	reformatter.format(TitleGroup("NEW CHD CASES",2))
	reformatter.format(TitleGroup("CVD PREVALENCE - first of year",1,["Prevalence"]))
	reformatter.format(TitleGroup("NEW INTERVENED CHD CASES",2))
	reformatter.format(TitleGroup("NUMBER TREATED",2,["DE","DH"]))
	reformatter.format(TitleGroup("CHD DEATHS",2))
	reformatter.format(TitleGroup("CHD Deaths (Bridge)",3))
	reformatter.format(TitleGroup("Acute CHD Death 11-17",3))
	reformatter.format(TitleGroup("Acute CHD Death 1-10",3))
	reformatter.format(TitleGroup("Acute CHD Deaths (Bridge & DH)",3,
					["Arrest","MI","Revasc"]))
	reformatter.format(TitleGroup("Acute CHD Deaths (Bridge)",3,
					["MI","Arrest In-Hospital","Arrest Pre-Hospital"]))
	reformatter.format(TitleGroup("Chronic CHD Death",3))
	reformatter.format(TitleGroup("Non-CVD Death",2))
	reformatter.format(TitleGroup("Non-CVD Death (DE)",3))
	reformatter.format(TitleGroup("DE Intervened Non-CVD Deaths", 3))
	reformatter.format(TitleGroup("Non-CVD Death (DH)",3))

	DE_group = TitleGroup("Total Pop (DE)",1)
	DH_group = TitleGroup("Total Pop (DH 1-10)",1)
	reformatter.format(DE_group)
	reformatter.format(DH_group)

	Total_group = TitleGroup("Total Pop -- DE + (DH 1-10)",1)
	Total_group.set_lines(DE_group)
	Total_group.add_lines(DH_group)
	Total_group.print_block(formatted_file)

	reformatter.format(TitleGroup("Total Pop (DH 11-17)",1))
	reformatter.format(TitleGroup("Total DE Diabetes Pop",1))
	reformatter.format(TitleGroup("NEW DIABETES CASES",2))
	reformatter.format(TitleGroup("Total DE Heart Failure Pop",1))
	reformatter.format(TitleGroup("NEW HEART FAILURE CASES",2))
	reformatter.format(TitleGroup("CVD EVENTS", 4, 
					["ANGINA", "ARREST", "MI", "STROKE"],17))
	reformatter.format(TitleGroup("Revascularization Events",4,
					["AMI CABG","AMI PTCA","ISO CABG","ISO PTCA"],))
	reformatter.format(TitleGroup("CVD POPULATION DISTRIBUTION BY STATE",4,
					["ANGINA","REVSC","MI","TBD"]))
	reformatter.format(TitleGroup("CVD POPULATION DISTRIBUTION BY STATE",4,
					["REVSC + MI","TBD","TBD","TBD"],15))
	reformatter.format(TitleGroup("CVD POPULATION DISTRIBUTION BY STATE",4,
					["TOT/ISC","MT+STROKE","BRIDGE MI","BRIDGE MI + ARR"],26))
	reformatter.format(TitleGroup("CVD POPULATION DISTRIBUTION BY STATE",4,
					["BRIDGE ARREST","BRIDGE ANGINA","BRIDGE MI + REVSC","BRIDGE TOT STROKE"],37))
	reformatter.format(TitleGroup("CVD POPULATION DISTRIBUTION BY STATE",1,
					["BRIDGE HEM STROKE"],48))
	reformatter.format(TitleGroup("Total MI",1))
	reformatter.format(TitleGroup("Bridge MI",1))
	reformatter.format(TitleGroup("DH First MI (1,2,14)",1))
	reformatter.format(TitleGroup("First MI",1))
	reformatter.format(TitleGroup("Total MI",1))
	reformatter.format(TitleGroup("DH 2nd MI (11,12,15, and dhxevt)",1))
	reformatter.format(TitleGroup("DH Re-MI (3-8,11-13,15)",1))
	reformatter.format(TitleGroup("DH MI Stroke (9,10,16,17)",1))
	reformatter.format(TitleGroup("TOTAL STROKE",2))
	reformatter.format(TitleGroup("BRIDGE STROKE",2))
	reformatter.format(TitleGroup("NEW INTERVENED STROKE CASES",2))
	reformatter.format(TitleGroup("First Stroke (DH ONLY)",2))
	reformatter.format(TitleGroup("STROKE DEATHS",2))
	reformatter.format(TitleGroup("TOTAL DEATHS",2))
	reformatter.format(TitleGroup("NON-CVD Costs",1,["BACKGROUND HEALTHCARE COST"],5))
	reformatter.format(TitleGroup("TOTAL CHD COSTS",1,["Age/Sex Breakdown($)"],12))
	reformatter.format(TitleGroup("TOTAL PREVENTION COSTS",1,["Age/Sex Breakdown($)"],6))
	reformatter.format(TitleGroup("TOTAL STROKE COSTS",1,["Age/Sex Breakdown($)"],5))
	reformatter.format(TitleGroup("Total QALY",1,["Age/Sex Breakdown"],6))
	reformatter.format(TitleGroup("Total DH QALY",1,["Age/Sex Breakdown"],6))


def validateInput():
	if len(sys.argv) < 2:
		print("Input file name: e.g. 'format.py [filename]'")
		sys.exit()

	if not os.path.isfile(sys.argv[1] + ".out"):
		print("Invalid File Name")
		print("Execute by typing 'format.py [filename]'")
		sys.exit()


class TitleGroup(object):
	"""Used to represent group of numeric data blocks denoted by 'title'

	Attr:
		title: String to look for that indicates start of block
		categories: Integer number of categories in group
		ctg_list: List of output categories (e.g. ANGINA, MI)
		linesdown: Integer number of lines down to search for block after title
			--by default (linesdown=0) searches for first number-containing
			line after the title, but this isn't possible for some groups
			e.g. "CVD POPULATION DISTRIBUTION BY STATE"
		lines: List of formatted lines for group
	"""

	def __init__(self, title, categories, ctg_list=[], linesdown=0):
		self.title = title
		self.categories = categories
		self.ctg_list = ctg_list
		self.linesdown = linesdown
		self.topline_format = 'Year     ' + '{:<18} '*(12*categories)
		self.num_format = '{}     ' + '{:<18} '*(12*categories)
		self.category_format = '         ' + '{:<228}'*categories
		self.year_offset = 0
		self.lines = [title]

	def set_lines(self,group):
		self.lines[1:] = group.lines[1:]

	def add_lines(self,group):
		lines = group.lines
		for line_num,line in enumerate(lines):
			split_line = line.split()
			if str.isdigit(split_line[0][0]):
				nums1 = split_line[1:]
				nums2 = self.lines[line_num].split()[1:]
				sums = [int(a)+int(b) for a,b in zip(nums1,nums2)]
				sum_line = [split_line[0]] + sums
				self.lines[line_num] = self.num_format.format(*sum_line)

	def increment_year(self):
		self.year_offset = self.year_offset + 1

	def append_line(self,str):
		self.lines.append(str)

	def format_categories(self):
		format_str = self.category_format
		return format_str.format(*self.ctg_list)

	def format_topline(self):
		topline = self._make_topline()
		format_str = self.topline_format
		return format_str.format(*topline)

	def format_num_line(self,base_year,num_list):
		format_str = self.num_format
		cur_year = base_year + self.year_offset
		return format_str.format(cur_year,*num_list)

	def _make_topline(self):
		topline_full = []
		for i in range(self.categories):
			topline_full += TOP_LINE
		return topline_full

	def write_header(self):
		if self.ctg_list:
			format_ctg = self.format_categories()
			self.append_line(format_ctg)

		format_topline = self.format_topline()
		self.append_line(format_topline)

	def print_block(self,file):
		for line in self.lines:
			print(line,file=file)
		file.write('\n')


class Reformatter(object):
	"""Used to build formatted file from .out file

	Attr:
		formatted_file: File to be written to
		outfile: CVDOutfile object containing information for .out file
	"""

	def __init__(self,outfile,formatted_file):
		self.formatted_file = formatted_file
		self.outfile = outfile
	
	def format(self,title_group):
		""" Reformats sections with particular label

		Args:
			title_group: TitleGroup object to be formatted
		"""
		
		title_group.write_header()
		self._format_blocks(title_group)  

	def _format_blocks(self,title_group):
		for line_num in range(self.outfile.num_lines):
			if self.outfile.find_title(line_num,title_group.title):
				self._format_block(line_num,title_group)
				title_group.increment_year()

		title_group.print_block(self.formatted_file)	

	def _format_block(self,line_num,title_group):
		base_year = self.outfile.base_year
		start_line = self._next_block(title_group,line_num)
		num_list = self.outfile.get_block(start_line,title_group.categories)
		format_nums = title_group.format_num_line(base_year,num_list)
		title_group.append_line(format_nums)

	def _next_block(self, title_group, line_num):
		"""Returns first line of next numeric block to read in"""
		return (title_group.linesdown + line_num if title_group.linesdown!=0 
						else self.outfile.next_num_line(line_num))

class CVDOutfile(object):
	"""Contains information of .out file

	Attr:
		lines_list: List of lines in .out file
		base_year: Integer first year of simulation
		num_lines: Integer number of lines in lines_list
	"""

	def __init__(self,filename):
		self.lines_list = self._get_lines(filename)
		self.base_year = int(self.lines_list[BASE_YEAR_LINE])
		self.num_lines = len(self.lines_list)

	def _get_lines(self,filename):
		with open(filename + '.out', 'r') as myfile:
			return myfile.readlines()

	def _replace_bad_chars(self, start_line):
		"""Replace characters that mess with reading in file"""
		for i in range(start_line, start_line + 6):
			self.lines_list[i] = self.lines_list[i].replace('. ', ' ') 
			self.lines_list[i] = self.lines_list[i].replace('.\n',' ')
			#for CVD prevalence -- don't want 'x/y' just want rate
			self.lines_list[i] = re.sub(r'[0-9]*./ \s*[0-9]*',' ',
												self.lines_list[i])
 
	def find_title(self, line_num, title):
		return (self.lines_list[line_num].find(title + '     ') != -1 or 
			self.lines_list[line_num].find(title + '\n') != -1 and 
			self.lines_list[line_num].find('Acute ' + title) == -1)

	def next_num_line(self, line_num):
		"""Find next line containing numbers after line line_num"""
		for i in range(MAX_LINES_AFTER):
			line_length = len(self.lines_list[i + line_num].split())
			if line_length > 0:
				first_char = self.lines_list[i + line_num].split()[0][0]
				if str.isdigit(first_char):
					return i + line_num
		return -1

	def get_block(self, start_line, categories):
		"""Get list of values in block starting at line start_line"""
		self._replace_bad_chars(start_line)
		block_lines = self.lines_list[start_line:start_line+6]
		block = NumBlock(block_lines)
		block.reorder_block(categories*2,AGE_RANGES)
		return block.get_list()

	def get_line(self,line_num):
		return self.lines_list[line_num]


class NumBlock(object):
	"""Block of values for one year in .out file
	
	Attr:
		num_list: List of the values
	"""

	def __init__(self,lines_list):
		self.num_list=[]
		self._parse_block(lines_list)

	def _parse_block(self,lines):
		for line in lines:
			split_line = line.split()
			#ignore age range
			self.num_list += [num for num in split_line[1:]]

	def reorder_block(self,columns,rows):
		"""Puts block in desired order for printing"""
		reordered = []
		for i in range(columns):
			for j in range(rows):
				reordered.append(self.num_list[i + columns*j])
		self.num_list = reordered

	def get_list(self):
		return self.num_list


if __name__ == '__main__':
    main()