/* PROGRAM SETUP */
capture log close
clear 	all
version 14.0
set linesize 200
matrix drop _all
set more off
local pgm clean
local dt `: di  %tdCY-N-D  daily("$S_DATE", "DMY")' 
local datades State/County level insurance rates
local task Create the dataset
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "



//Convert csv files to Stata
clear
foreach year1 of numlist 2008/$lastyear {
	qui import delimited "$raw_data_path/RawSAHIEData/sahie_`year1'.csv", clear varnames(80)
	qui drop v26
	count
	compress
	save "$raw_data_path/RawSAHIEData/sahie_`year1'.dta", replace
	}

//Append all years
clear
foreach year1 of  numlist 2008/$lastyear {
	append using "$raw_data_path/RawSAHIEData/sahie_`year1'.dta", force
	}

//Label variables
rename statefips state
rename countyfips county
rename state_name statelong
rename county_name countyname

label var year "Year"
label var state "FIPS code of state"
label var county "FIPS code of county"
note geocat: State level info in 40. County level info in 50. 
label var geocat "State is 40, county is 50"
label var agecat "0 is under 65, 1 is 18-64, 2 is 40-64, 3 is 50-64, 4 is under 19"
label var racecat "0 is all, 1 is white, 2 is black, 3 is hispanic"
label var sexcat "0 is both, 1 is male, 2 is female"
label var iprcat "0 is all, 1 is <200% FPL, 2 is <250% FPL, 3 is <138% FPL, 4 is <400% FPL, 5 is 138-400% FPL"
label var nic "Number insured"
label var nic_moe "MOE for number insured"
label var nui "Number uninsured"
label var nui_moe "MOE for number uninsured"
label var nipr "Number in demographic group for <income level>"
label var nipr_moe "MOE for number in demographic group for <income level>"
label var pctic "Percent insured in demographic group for <income level>"
label var pctic_moe "MOE for percent insured in demographic group for <income level>"
label var pctui "Percent uninsured in demographic group for <income level>"
label var pctui_moe "MOE for percent uninsured in demographic group for <income level>"
label var pctliic "Percent insured in demographic group for all income levels"
label var pctliic_moe "MOE for Percent insured in demographic group for all income levels"
label var pctelig "Percent uninsured in demographic group for all income levels"
label var pctelig_moe "MOE for percent uninsured in demographic group for all income levels"

drop version


//County level dataset
preserve
keep if geocat==50
drop geocat
tab year,m
compress
save "$data_path/sahie_county_2008_$lastyear",replace



//County level dataset with 18-64, 0-400% FPL, all year insurance rates
use "$data_path/sahie_county_2008_$lastyear",clear
keep if agecat==1&racecat==0&sexcat==0&iprcat==4
keep year state county countyname statelong pctui pctic
label var pctui "Uninsurance rate for 18-64, 0-400% FPL"
label var pctic "Insurance rate for 18-64, 0-400% FPL"
tab year,m //Should be about 3,100 per year
sum pctui
compress
save "$data_path/sahie_county_0_400_2008_$lastyear", replace

//County level dataset with 18-64, 0-138% FPL, all year insurance rates
use "$data_path/sahie_county_2008_$lastyear",clear
keep if agecat==1&racecat==0&sexcat==0&iprcat==3
keep year state county countyname statelong pctui pctic
label var pctui "Uninsurance rate for 18-64, 0-138% FPL"
label var pctic "Insurance rate for 18-64, 0-138% FPL"
tab year,m //Should be about 3,100 per year
sum pctui
compress
save "$data_path/sahie_county_0_138_2008_$lastyear", replace

log close
exit
