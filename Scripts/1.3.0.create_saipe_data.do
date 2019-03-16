/* PROGRAM SETUP */
capture log close
clear 	all
version 14.0
set linesize 200
set matsize 11000
matrix drop _all
set more off
local pgm data1-import
local datades Income and poverty rates
local dt `: di  %tdCY-N-D  daily("$S_DATE", "DMY")' 
local task Import the income and poverty rate
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

/* NOTES */
//Downloaded from https://www.census.gov/programs-surveys/saipe/data/datasets.html

!unzip "$raw_data_path/RawSAIPEData.zip" -d "$raw_data_path"
 
/* CLEAN DATA */



//Convert each excel file to stata
foreach x of numlist 2003/2017 {
	import excel using "$raw_data_path/RawData/est`x'ALL.xls", clear 
	drop F G I J L M O P R S U V X Y AA AB AD AE
	rename (A B C D E H K N Q T W Z AC) ///
		(state county statename countyname pov_all_ages pov_rate_all_ages ///
		pov_0_17 pov_rate_0_17 pov_5_17 pov_rate_5_17 median_income ///
		pov_0_4 pov_rate_0_4)
	drop if statename==""
	drop in 1
	gen year=`x'
	destring *, replace	
	saveold "$raw_data_path/RawData/est`x'ALL.dta", replace
	}	
	
//Append all years together
clear
foreach x of numlist 2003/2017 {
	append using "$raw_data_path/RawData/est`x'ALL.dta"
	}
	
label var year "Year"
label var state "State"
label var county "County" 
label var statename "State"
label var countyname "County"
label var pov_all_ages "Poverty Number, All Ages"
label var pov_rate_all_ages "Poverty Rate, All Ages"
label var pov_0_17 "Poverty Number, 0-17"
label var pov_rate_0_17 "Poverty Rate, 0-17"
label var pov_5_17 "Poverty Number, 5-17"
label var pov_rate_5_17 "Poverty Rate, 5-17"
label var median_income "Median household income"
label var pov_0_4 "Poverty Number, 0-4"
label var pov_rate_0_4 "Poverty Rate, 0-4"


//Save county dataset
preserve
drop if county==0
drop pov_0_4 pov_rate_0_4
count
tab county,m
compress
save "$data_path/saipe_county_2003_2017", replace


//Save state dataset
restore
keep if county==0|state==11
rename countyname statelong
label var statelong "State"
drop if pov_0_4==.
drop if county==1
drop county
count
tab state,m
compress
save "$data_path/saipe_state_2003_2017", replace


!rm -r "$raw_data_path/RawData"
!rm -r "$raw_data_path/__MACOSX"

log close
exit
