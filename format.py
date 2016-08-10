#!/usr/bin/env python
from __future__ import print_function

import sys
import os.path
import re


def main():
	output_extension = '.frmt'

	args = parse_args()

	outfile = find_outfile(args.filename)
	formatted_file = open(args.filename + output_extension,'w')

	reformatter = Reformatter(outfile,formatted_file)
	
	reformatter.format(TrackedSection("NEW CHD CASES",2))
	reformatter.format(TrackedSection("CVD PREVALENCE - first of year",1,["Prevalence"]))
	reformatter.format(TrackedSection("NEW INTERVENED CHD CASES",2))
	reformatter.format(TrackedSection("NUMBER TREATED",2,["DE","DH"]))
	reformatter.format(TrackedSection("CHD DEATHS",2))
	reformatter.format(TrackedSection("CHD Deaths (Bridge)",3))
	reformatter.format(TrackedSection("Acute CHD Death 11-17",3))
	reformatter.format(TrackedSection("Acute CHD Death 1-10",3))
	reformatter.format(TrackedSection("Acute CHD Deaths (Bridge & DH)",3,
					["Arrest","MI","Revasc"]))
	reformatter.format(TrackedSection("Acute CHD Deaths (Bridge)",3,
					["MI","Arrest In-Hospital","Arrest Pre-Hospital"]))
	reformatter.format(TrackedSection("Chronic CHD Death",3))
	reformatter.format(TrackedSection("Non-CVD Death",2))
	reformatter.format(TrackedSection("Non-CVD Death (DE)",3))
	reformatter.format(TrackedSection("DE Intervened Non-CVD Deaths", 3))
	reformatter.format(TrackedSection("Non-CVD Death (DH)",3))

	DE_group = TrackedSection("Total Pop (DE)",1)
	DH_group = TrackedSection("Total Pop (DH 1-10)",1)
	reformatter.format(DE_group)
	reformatter.format(DH_group)

	Total_group = TrackedSection("Total Pop -- DE + (DH 1-10)",1)
	Total_group.set_lines(DE_group)
	Total_group.add_lines(DH_group)
	Total_group.print_block(formatted_file)

	reformatter.format(TrackedSection("Total Pop (DH 11-17)",1))
	reformatter.format(TrackedSection("Total DE Diabetes Pop",1))
	reformatter.format(TrackedSection("NEW DIABETES CASES",2))
	reformatter.format(TrackedSection("Total DE Heart Failure Pop",1))
	reformatter.format(TrackedSection("NEW HEART FAILURE CASES",2))
	reformatter.format(TrackedSection("CVD EVENTS", 4, 
					["ANGINA", "ARREST", "MI", "STROKE"],17))
	reformatter.format(TrackedSection("Revascularization Events",4,
					["AMI CABG","AMI PTCA","ISO CABG","ISO PTCA"],))
	reformatter.format(TrackedSection("CVD POPULATION DISTRIBUTION BY STATE",4,
					["ANGINA","REVSC","MI","TBD"]))
	reformatter.format(TrackedSection("CVD POPULATION DISTRIBUTION BY STATE",4,
					["REVSC + MI","TBD","TBD","TBD"],15))
	reformatter.format(TrackedSection("CVD POPULATION DISTRIBUTION BY STATE",4,
					["TOT/ISC","MT+STROKE","BRIDGE MI","BRIDGE MI + ARR"],26))
	reformatter.format(TrackedSection("CVD POPULATION DISTRIBUTION BY STATE",4,
					["BRIDGE ARREST","BRIDGE ANGINA","BRIDGE MI + REVSC","BRIDGE TOT STROKE"],37))
	reformatter.format(TrackedSection("CVD POPULATION DISTRIBUTION BY STATE",1,
					["BRIDGE HEM STROKE"],48))
	reformatter.format(TrackedSection("Total MI",1))
	reformatter.format(TrackedSection("Bridge MI",1))
	reformatter.format(TrackedSection("DH First MI (1,2,14)",1))
	reformatter.format(TrackedSection("First MI",1))
	reformatter.format(TrackedSection("DH 2nd MI (11,12,15, and dhxevt)",1))
	reformatter.format(TrackedSection("DH Re-MI (3-8,11-13,15)",1))
	reformatter.format(TrackedSection("DH MI Stroke (9,10,16,17)",1))
	reformatter.format(TrackedSection("TOTAL STROKE",2))
	reformatter.format(TrackedSection("BRIDGE STROKE",2))
	reformatter.format(TrackedSection("NEW INTERVENED STROKE CASES",2))
	reformatter.format(TrackedSection("First Stroke (DH ONLY)",2))
	reformatter.format(TrackedSection("STROKE DEATHS",2))
	reformatter.format(TrackedSection("TOTAL DEATHS",2))
	reformatter.format(TrackedSection("NON-CVD Costs",1,["BACKGROUND HEALTHCARE COST"],5))
	reformatter.format(TrackedSection("TOTAL CHD COSTS",1,["Age/Sex Breakdown($)"],12))
	reformatter.format(TrackedSection("TOTAL PREVENTION COSTS",1,["Age/Sex Breakdown($)"],6))
	reformatter.format(TrackedSection("TOTAL STROKE COSTS",1,["Age/Sex Breakdown($)"],5))
	reformatter.format(TrackedSection("Total QALY",1,["Age/Sex Breakdown"],6))
	reformatter.format(TrackedSection("Total DH QALY",1,["Age/Sex Breakdown"],6))


def parse_args():
	parser = argparse.ArgumentParser()
	parser.add_argument('filename',help='prefix of .out file to be reformatted'
							'e.g. \'base\' if the .out file is \'base.out\'')
	return parser.parse_args()


def find_outfile():
	if not os.path.isfile(sys.argv[1] + ".out"):
		print("Invalid File Name")
		print("Execute by typing 'format.py filename'")
		sys.exit()
	return CVDOutfile(args.filename)


class TrackedSection(object):
	"""Used to represent group of numeric data blocks denoted by 'title'

	Attr:
		title: String to look for that indicates start of block
		linesdown: Integer number of lines down to search for block after title
			--by default (linesdown=0) searches for first number-containing
			line after the title, but this isn't possible for some groups
			e.g. "CVD POPULATION DISTRIBUTION BY STATE"
		lines: List of formatted lines for group
	"""

	def __init__(self, title, linesdown=0):
		self.title = title
		self.linesdown = linesdown
		self.num_format = '{}     ' + '{:<18} '*(12*categories)
		self.year_offset = 0
		self.lines = [title]

	def append_line(self,str):
		self.lines.append(str)

	def set_lines(self,group):
		self.lines[1:] = group.lines[1:]

	def add_lines(self,group):
		lines = group.lines
		for line_num,line in enumerate(lines):
			split_line = line.split()
			if str.isdigit(split_line[0][0]):
				self.add_line(split_line,line_num)

	def add_line(self,line,line_num):
			nums_to_add = line[1:]
			nums_self = self.lines[line_num].split()[1:]
			sums = [int(a)+int(b) for a,b in zip(nums_to_add,nums_self)]
			sum_line = [line[0]] + sums
			self.lines[line_num] = self.num_format.format(*sum_line)

	def format_num_line(self,base_year,num_list):
		format_str = self.num_format
		cur_year = base_year + self.year_offset
		self.year_offset = self.year_offset + 1
		return format_str.format(cur_year,*num_list)

	def write_header(self,category_line):
		header = OutputHeader(category_line)
		topline = header.get_topline()
		categories = header.get_categories()

		self.append_line(topline)
		self.append_line(categories)

	def print_block(self,file):
		for line in self.lines:
			print(line,file=file)
		file.write('\n')



class OutputHeader(object):
	"""Data for header of data associated with section

	Contained in TrackedSection object

	Attr:
		categories: List of categories in 
	"""

	top_line= ['M35-44', 'M45-54', 'M55-64', 'M65-74', 'M75-84', 'M85-94', 
	'F35-44',  'F45-54',  'F55-64',   'F65-74',  'F75-84',  'F85-94']

	def __init__(self,category_line):
		self.categories = self._parse_categories(category_line)
		self.category_format = '         ' + '{:<228}'*categories
		self.topline_format = 'Year     ' + '{:<18} '*(12*categories)

	def _parse_categories(self,category_line):
		match = re.split(r'(\s\s+)',category_line.rstrip())
		categories = [c for c in match if len(m)>0 and m[0]!=' ']

	def get_categories(self):
		format_str = self.category_format
		return format_str.format(*self.ctg_list)

	def get_topline(self):
		topline = self._make_topline()
		format_str = self.topline_format
		return format_str.format(*topline)

	def _make_topline(self):
		topline_full = []
		for i in range(self.categories):
			topline_full += self.top_line
		return topline_full


class Reformatter(object):
	"""Used to build formatted file from .out file

	Attr:
		formatted_file: File to be written to
		outfile: CVDOutfile object containing information for .out file
	"""

	def __init__(self,outfile,formatted_file):
		self.formatted_file = formatted_file
		self.outfile = outfile
	
	def format(self,section):
		""" Reformats sections with particular label

		Args:
			section: TrackedSection object to be formatted
		""" 
		for line_num in range(self.outfile.num_lines):
			if self.outfile.find_title(line_num,section.title):
				self._format_block(line_num,section)

		section.print_block()

	def _format_block(self,line_num,section):
		base_year = self.outfile.base_year
		start_line = self._next_block_line(section,line_num)

		if section.year_offset == 0:
			category_line = self.outfile.get_line(line_num-2)
			section.write_header(category_line)

		num_list = self.outfile.get_block(start_line,section.categories)
		formatted_nums = section.format_num_line(base_year,num_list)
		section.append_line(formatted_nums)

	def _next_block_line(self, section, line_num):
		"""Returns first line of next numeric block to read in"""
		return (section.linesdown + line_num if section.linesdown!=0 
						else self.outfile.next_data_line(line_num))

class CVDOutfile(object):
	"""Contains information of .out file

	Attr:
		base_year_line: Integer ine of .outfile to look for base year
		age_ranges: Integer number of age ranges considered
		max_lines_after: Integer number of lines to search for block
			of numbers after finding a title
		lines_list: List of lines in .out file
		base_year: Integer first year of simulation
		num_lines: Integer number of lines in lines_list
	"""
	base_year_line = 9
	age_ranges = 6
	max_lines_after = 15 

	def __init__(self,filename):
		self.lines_list = self._get_lines(filename)
		self.base_year = int(self.lines_list[self.base_year_line])
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

	def next_data_line(self, line_num):
		"""Find next line containing numbers after line line_num"""
		for offset in range(self.max_lines_after):
			line = self.lines_list[offset+line_num]
			if 'age' in line:
				return offset + line_num + 1
		return -1

	def get_block(self, start_line, categories):
		"""Get list of values in block starting at line start_line"""
		self._replace_bad_chars(start_line)
		block_lines = self.lines_list[start_line:start_line+6]
		block = NumBlock(block_lines)
		block.reorder_block()
		return block.get_list()

	def get_line(self,line_num):
		return self.lines_list[line_num]


class NumBlock(object):
	"""Block of values for one year in .out file
	
	Attr:
		num_list: List of the values in a data block of .out file
		columns: Number of columns in data block of .out file
			double the number of categories in data block (for M/F)
		rows = Number of rows ' ' - corresponds to number of age ranges
	"""
	rows = 6


	def __init__(self,lines_list):
		self.num_list=[]
		self._parse_block(lines_list)
		self.columns = len(self.num_list)/self.rows

	def _parse_block(self,lines):
		for line in lines:
			split_line = line.split()
			#ignore age range
			self.num_list += [num for num in split_line[1:]]

	def reorder_block(self):
		"""Puts block in desired order for printing"""
		reordered = []
		for i in range(self.columns):
			for j in range(self.rows):
				reordered.append(self.num_list[i + columns*j])
		self.num_list = reordered

	def get_list(self):
		return self.num_list


if __name__ == '__main__':
    main()