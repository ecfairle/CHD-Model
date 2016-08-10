# CVD Policy Model Montecarlo Simulation and Formatting

montecarlo.py: Montecarlo simulation for .inp files and .dat files

format.py: Converting .out files from model into formatted tables

## Getting started:

### Download:
- Click the green 'Clone or Download' link on the right and select 'Download ZIP'
- Unzip files into base model directory

### Usage:
- Open the command line (Windows) by searching for cmd in the start menu or the Terminal (MAC)
- Move to the model directory (now containing the python files) by typing `cd [C:/...]` where "C:/..." is replaced by the model directory. Alternatively, open cmd.exe from the model directory to have it open directly to that directory.
- Run the programs with the -h flag (e.g. `montecarlo.py -h`) to get program usage instructions
- Run mc.bat by typing `mc` in the the command line (will not work on MAC)

## Editing Files:

### format.py:
- Delete lines in format.py to exclude that category from the reformatted file

### MC.bat:
- Change the files listed in varialbe 'files' to change which .inp files are varied (file names delimited by commas or spaces)
- Change variable 'iterations' to however many montecarlo simulations you want

### montecarlo.py:
- datfiles.txt should have one file-name prefix per line
- Alternatively, it will modify all files with a corresponding {fname}sd.dat file using a normal distribution
- __effects_mc:__
  - first line is ignored -- include labels here
  - further lines should be formatted as follows: <br>
  ```
    keyword,num_lines 
    [dist_name,]param1,param2,...[,lower_bound][,upper_bound]  
    [dist_name,]param1,...   
    ... 
    [dist_name,]...
  ```
    where there are `num_lines` lines after the first line, each corresponding to a component of the input to be varied. It will sample from distribution `dist_name` with parameters `param1,...` and sum the results. (At the moment these are assumed to not be correlated, 
    so they are sampled independently). The distribution will default to normal if not included. The lower and upper bounds will default to +inf, -inf respectively if not included (to add upper bound w/o lower bound put nothing inside lower_bound commas e.g. 
    `dist_name,param1,param2,,upper_bound`)
