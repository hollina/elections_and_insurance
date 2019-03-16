/* PROGRAM SETUP */
capture log close
clear 	all
version 14.0
set linesize 200
matrix drop _all
set more off
local pgm baseline
local dt `: di  %tdCY-N-D  daily("$S_DATE", "DMY")' 
local datades Baseline 2013 uninsurance rates
local task Create state-level dataset with 2013 uninsurance rates for each income level
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

/* KEEP YEAR 2013 AND SAVE NEW DATASET */

use "$data_path/sahie_county_0_400_2008_$lastyear", clear
keep if year==2013
rename pctui pctui_2013
rename pctic pctic_2013
label var pctui_2013 "Year 2013, Uninsurance rate for 18-64, 0-400% FPL"
label var pctic_2013 "Year 2013, Insurance rate for 18-64, 0-400% FPL"
compress
save "$data_path/sahie_county_0_400_2013", replace


use "$data_path/sahie_county_0_138_2008_$lastyear", clear
keep if year==2013
rename pctui pctui_2013
rename pctic pctic_2013
label var pctui_2013 "Year 2013, Uninsurance rate for 18-64, 0-138% FPL"
label var pctic_2013 "Year 2013, Insurance rate for 18-64, 0-138% FPL"
compress
save "$data_path/sahie_county_0_138_2013", replace


log close
exit
