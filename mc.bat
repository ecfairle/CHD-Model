@echo off
@echo %time%
Del modfile\MC*.txt 
mkdir output_files 
mkdir sims 

set files=base,1000,1039,10100
set /a iterations=1000

for /L %%A in (0,1,%iterations%) do (
	if  "%%A"=="0" (
		py montecarlo.py %files% -z
	) else (
		py montecarlo.py %files%
	)
	for %%f in (%files%) do (
		Del *.out
	  	CHDMOD90<%%f_mc.inp>junk.txt
	  	py format.py %%f
	  	copy %%f.frmt output_files\%%f_%%A%.frmt >NUL
	  	copy outfile.dat sims\%%f_%%A%.dat >NUL
	)
)