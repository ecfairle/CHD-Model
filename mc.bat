@echo off
@echo START: %time%
setlocal enabledelayedexpansion



set /a ITERATIONS=10



set INP_PREFIX_FILE=MC\inputs\inp_files.txt
set DAT_PREFIX_FILE=MC\inputs\dat_files.txt
set BREAKDOWN_RESULTS=MC\results\breakdown
set CUMULATIVE_RESULTS=MC\results\cumulative
set VARIED_DAT=MC\input_variation\dat_files
set INP_VARIATION_FILE=MC\input_variation\inp.txt



if not exist MC (
	mkdir MC
)

if not exist MC/inputs (
	mkdir MC/inputs
)

if exist %INP_VARIATION_FILE% (
	del %INP_VARIATION_FILE% 
)

if not exist %VARIED_DAT% (
	mkdir %VARIED_DAT%
)

if not exist %BREAKDOWN_RESULTS% ( 
	mkdir %BREAKDOWN_RESULTS%
)

if not exist %CUMULATIVE_RESULTS% (
	mkdir %CUMULATIVE_RESULTS%
)


for /L %%A in (0,1,%ITERATIONS%) do (
	if  "%%A"=="0" (
		py montecarlo.py -r -z -s
	) else (
		REM print iteration number to file
		set  "pr=%%A:                "
	  	<nul set /p =!pr:~0,17! >> %INP_VARIATION_FILE%
		py montecarlo.py -r -s
	)
	for /F "tokens=*" %%f in (%DAT_PREFIX_FILE%) do (
		if exist modfile\%%f_mc.dat (
			copy modfile\%%f_mc.dat  %VARIED_DAT%\%%f_%%A.dat >nul
		)
	)
	for /F "tokens=*" %%f in (%INP_PREFIX_FILE%) do (
		if exist %%f.out (
			del %%f.out
		)
	  	CHDMOD90<%%f_mc.inp>junk.txt
	  	py format.py %%f
	  	copy %%f.frmt %BREAKDOWN_RESULTS%\%%f_%%A%.frmt >nul
	  	copy outfile.dat %CUMULATIVE_RESULTS%\%%f_%%A%.dat >nul
	)
)

echo END: %time%
endlocal