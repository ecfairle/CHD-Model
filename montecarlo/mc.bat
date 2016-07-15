@echo off
@echo %time%
Del modfile\MC*.txt

set files=base,1000,1039,10100
set /a iterations=1000

for /L %%A in (0,1,%iterations%) do (
	sim_beta.py %%A%
	sim_inputs.py %files% %%A%
	for %%f in (%files%) do ( 
	  	CHDMOD90<%%f_mc.inp>junk.txt
	  	SSB.py %%f
	  	copy %%f.ssb output_ssb\%%f_%%A%.ssb >NUL
	  	copy outfile.dat sims\%%f_%%A%.dat >NUL
	  	Del %%f.out
	)
)