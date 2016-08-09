# CVD Policy Model Montecarlo Simulation and Formatting

Montecarlo simulation for .inp files and .dat files, turning .out files from model
into formatted tables.

___

## Getting started:

### Download:
- Click the green 'Clone or Download' link on the right and select 'Download ZIP'
- Unzip files into base model directory

### Usage:
- Open the command line (Windows) by searching for cmd in the start menu or the Terminal (MAC)
- Move to the model directory (now containing the python files) by typing `cd [C:/...]` where "C:/..." is replaced by the model directory. Alternatively, open cmd.exe from the model directory to have it open directly to that directory.
- Run the programs with the -h flag (e.g. `montecarlo.py -h`) to get program usage instructions
- Run mc.bat by typing `mc` in the the command line (will not work on MAC)

___

## Changing Files:

### format.py:
- Delete lines in format.py to exclude that category from the reformatted file

### MC.bat:
- Change the files listed in 'files' to change which .inp files are varied
