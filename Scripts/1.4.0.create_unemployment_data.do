/* NOTES */
//State, county, and MSA level unemployment rates
//The state-level data from https://download.bls.gov/pub/time.series/la/la.data.3.AllStatesS
//The county-level data from https://www.bls.gov/lau/#tables
//The MSA-level data from https://www.bls.gov/lau/metrossa.htm

/* CREATE THE DATASETS */
*do "$script_path/1.4.1.unemp_cty"
*do "$script_path/1.4.3.unemp_state"

/* PROGRAM SETUP */
capture log close
clear 	all
version 14.0
set linesize 200
set matsize 11000
matrix drop _all
set more off
local pgm unemp_cty
local datades County level annual unemployment rates
local dt `: di  %tdCY-N-D  daily("$S_DATE", "DMY")' 
local task Import the county level annual unemployment rates
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

!unzip "$raw_data_path/RawUnemploymentData.zip" -d "$raw_data_path"

/* IMPORT THE DATA DOWNLOADED FROM BLS */
foreach x of numlist 10/17 {
	import excel using "$raw_data_path/RawUnemploymentData/laucnty`x'.xlsx", clear
	rename (B C D E G H I J) (state county countyname year cty_labor_force cty_employed cty_unemployed cty_unemp)
	label var cty_labor_force "County-Level Labor Force [Number]"
	label var cty_employed "County-Level Employed [Number]"
	label var cty_unemployed "Unemployed [Number]"
	label var cty_unemp "County Unemployment Rate [0-100]"
	drop A F
	drop if year==""
	drop in 1
	foreach var of varlist cty_labor_force cty_employed cty_unemployed cty_unemp {
		replace `var'="" if `var'=="N.A."
		}
	destring, replace
	order year
	saveold "$raw_data_path/RawUnemploymentData/laucnty20`x'", replace
	}

foreach x of numlist 0/9 {
	import excel using "$raw_data_path/RawUnemploymentData/laucnty0`x'.xlsx", clear
	rename (B C D E G H I J) (state county countyname year cty_labor_force cty_employed cty_unemployed cty_unemp)
	label var cty_labor_force "County-Level Labor Force [Number]"
	label var cty_employed "County-Level Employed [Number]"
	label var cty_unemployed "Unemployed [Number]"
	label var cty_unemp "County Unemployment Rate [0-100]"
	drop A F
	drop if year==""
	drop in 1
	foreach var of varlist cty_labor_force cty_employed cty_unemployed cty_unemp {
		replace `var'="" if `var'=="N.A."
		}
	destring, replace
	order year
	saveold "$raw_data_path/RawUnemploymentData/laucnty200`x'", replace
	}
	
foreach x of numlist 90/99 {
	import excel using "$raw_data_path/RawUnemploymentData/laucnty`x'.xlsx", clear
	rename (B C D E G H I J) (state county countyname year cty_labor_force cty_employed cty_unemployed cty_unemp)
	label var cty_labor_force "County-Level Labor Force [Number]"
	label var cty_employed "County-Level Employed [Number]"
	label var cty_unemployed "Unemployed [Number]"
	label var cty_unemp "County Unemployment Rate [0-100]"
	drop A F
	drop if year==""
	drop in 1
	foreach var of varlist cty_labor_force cty_employed cty_unemployed cty_unemp {
		replace `var'="" if `var'=="N.A."
		}
	destring, replace
	order year
	saveold "$raw_data_path/RawUnemploymentData/laucnty19`x'", replace
	}
	
/* APPEND ALL YEARS TOGETHER */
clear
foreach x of numlist 1990/2017 {
	append using "$raw_data_path/RawUnemploymentData/laucnty`x'.dta"
	}
sum year
/* Keep only the years we need */
keep if year==2008 | year==2012 | year==2016

/* SAVE FILE */
local saveas cty_unemp_2008_2016
label data " `saveas'.dta | `datades' | `dt'"
note: `saveas'.dta | `task' | `tag'
compress
save "$data_path/`saveas'", replace

!rm -r "$raw_data_path/RawUnemploymentData"
!rm -r "$raw_data_path/__MACOSX"

log close
exit

