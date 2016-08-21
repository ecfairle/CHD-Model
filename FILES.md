# Files

`format.py`: Converts .out file outputted by successful run of CVD Policy Model into readable sections grouped by title instead of year

`montecarlo.py`: Runs single Montecarlo simulation on model inputs including **.inp** files (in base directory) and .dat files (in modfile)

`mc.bat`: Runs a series of montecarlo simulations

## Formatting

Using format.py only requires a **.out** file outputted by a successful model run to be in the same directory. By default, all sections are formatted and put into a **.frmt** file with the same prefix. To remove sections, edit the list at the top of format.py. 

### Run
- `py format.py -h` for usage instructions and options
- `py format.py [file_prefix]` to format data in **[file_prefix].out**

## Montecarlo Simulations

Running a single Montecarlo simulation is done by executing `montecarlo.py`. 

### Input Files

Besides model input files, information for montecarlo simulations is stored in directory MC. This includes output, [inputs](MC/inputs) and input variation data. 
#### Dat Files

Each **_mc0.dat** file should be identical to the original **.dat** file but with a formatting string with the following format on the last line `FORMAT:(14x (f9.6,3x))`. This describes the formatting for data lines in this file expected by the model. (e.g. this would imply 14 leading spaces, floats occupying up to 9 spaces with up to 6-digit precision and 3 trailing spaces per numeric entry.) 

List **.dat** files to be varied in [dat_files.txt](MC/inputs/dat_files.txt)

#### Inp Files

Each **_mc0.inp**  should have unique labels for each input value that is being varied. These labels and other information about varying the **.inp** file should be listed in [inp_variation.txt](MC/inputs/inp_variation.txt). Prefixes of **.inp** files to be varied should be listed in [inp_files.txt](MC/inputs/inp_files.txt) 

**inp_variation.txt** describes which lines should be varied (found using labels) and how to vary them. **inp_variation.txt** lines should be separated into sections based on a key word (to find the right lines) which corresponds a number (or set of numbers) to be varied. These sections are each composed of components, each of which corresponds to a distribution with set parameters. Here is a description of the format and options associated with each section: 

 ```
    keyword,num_components 
    [g=group_name,][dist_name,]param1,param2,...[,lower_bound][,upper_bound]  
    [g=group_name,][dist_name,]param1,...   
    ... 
    [g=group_name,][dist_name,]...
 ```
Read the [example file](MC/inputs/inp_variation.txt) to see how this is done.

##### Components
A section can consist of a single component but multiple components allows you to separate data in ways that aren't considered by the model itself. 

##### Distributions
Montecarlo.py will sample from distribution `dist_name` (normal if not included) with parameters `param1,param2,...` and sum the results from each line. The sum will replace the value on the lines in which `keyword` is found. Supported distributions are:

- **Normal** - `param1`: mean, `param2`: standard deviation (with exception of using [mean option](#mean-option))
- **LogNormal** - `param1`: mean, `param2`: standard deviation 
- **Beta** - `param1`: alpha, `param2`: beta
- **Gamma** - `param1`: shape, `param2`: scale

##### Correlated Components
To indicate that samples should be correlated, give them the same group name (works between sections). If a component shouldn't be correlated with any other component, either exclude the group argument or give it a unique group

##### Upper and Lower Bounds
Lower and/or upper bounds can be included but will default to -inf, +inf respectively. To add upper bound w/o lower bound put nothing inside lower_bound commas e.g. `param1,param2,,upper_bound`

##### MEAN option

For normal distributions `param1` can be **MEAN**, indicating the mean of the distribution should be determined by the line in the **.inp** file. Here, `param2` must be a coefficient of variation. This option is used to simplify the case in which there are many lines with the same significance but different means (these should clearly be correlated and have the same coefficient of variation).

### Run
- `py montecarlo.py -h` for usage instructions and options.

