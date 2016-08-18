@echo off
@echo %time%
setlocal enabledelayedexpansion

if exist modfile\MC\inp.txt (
	Del modfile\MC\inp.txt 
)

if not exist output_files ( 
	mkdir output_files
)

if not exist sims (
	mkdir sims
)

set "spaces =              " 

set inp_prefix_file=file_prefixes.txt
set /a iterations=10

for /L %%A in (0,1,%iterations%) do (
	if  "%%A"=="0" (
		py -3.5 montecarlo.py -r %inp_prefix_file% -z -s
	) else (
		REM print iteration number to file
		echo %%A
		set  "pr=%%A:              "
		echo !pr!
	  	<nul set /p =!pr:~0,16! >> modfile\MC\inp.txt
		py -3.5 montecarlo.py -r %inp_prefix_file% -s
	)
	for /F "tokens=*" %%f in (%inp_prefix_file%) do (
		if exist %%f.out (
			Del %%f.out
		)
	  	CHDMOD90<%%f_mc.inp>junk.txt
	  	py format.py %%f
	  	copy %%f.frmt output_files\%%f_%%A%.frmt >nul
	  	copy outfile.dat sims\%%f_%%A%.dat >nul
	)
)