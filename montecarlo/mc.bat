@echo off
@echo %time%
Del modfile\MC*.txt
FOR /L %%A IN (1,1,10) DO (
  montecarlo.py
  CVDMOD91<SBP1_mc.inp>junk.txt
  copy outfile.dat sims\test%%A%.dat
  Del SBP1_mc.out
)
@echo %time%