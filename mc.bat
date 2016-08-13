@echo off
@echo %time%
Del modfile\MC.txt 
mkdir output_files 
mkdir sims 

set files=au
set /a iterations=10

for /L %%A in (0,1,%iterations%) do (
	if  "%%A"=="0" (
		py montecarlo.py %files% -z -s
	) else (
		py montecarlo.py %files% -s
	)
	for %%f in (%files%) do (
		Del %%f.out
	  	CHDMOD90<%%f_mc.inp>junk.txt
	  	py format.py junk%%f
	  	copy %%f.frmt output_files\%%f_%%A%.frmt >NUL
	  	copy outfile.dat sims\%%f_%%A%.dat >NUL
	)
)