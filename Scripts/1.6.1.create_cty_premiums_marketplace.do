// Program setup
capture log close
clear all
set linesize 200
set more off
matrix drop _all
local project ElectionACA
local datades Marketplace premiums for counties
local pgm cty_premiums
local dt $date
local task Prepare marketplace premiums file
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

// Unzip ACA Marketplace  files
!unzip "$raw_data_path/RawMarketplaceData.zip" -d "$raw_data_path"

*****************************************
* FIRST CREATE 2017 FILE 				*
*****************************************
//Open dataset
use "$raw_data_path/RawMarketplaceData/2017_QHP_Landscape_Individual_Market_Medical", clear

//Keep relevant variables
keep State_Code County_Name Premium_*  Metal_Level
drop Premium_Scenarios
keep if Metal_Level=="Silver"
drop Metal_Level

//Merge in FIPS codes
rename State_Code state
do "$script_path/1.6.3.add_fips.do"
count if StateFIPS==.|CountyFIPS==.  //0 missing!

//Find 2nd lowest silver premium
gsort StateFIPS CountyFIPS Premium_Adult_Individual_Age_27
bysort StateFIPS CountyFIPS: egen rank = rank(Premium_Adult_Individual_Age_27),unique
gen prem_2ndlow=Premium_Adult_Individual_Age_27 if rank==2
gsort StateFIPS CountyFIPS prem_2ndlow
	//Some counties only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(StateFIPS CountyFIPS)
	gen oneplanoffered=tag==1&prem_2ndlow==.
	replace prem_2ndlow=Premium_Adult_Individual_Age_27 if oneplanoffered==1
	//Carryforward
	carryforward prem_2ndlow, gen(prem_2ndlow_2017)
	label var prem_2ndlow_2017 "2017, 2nd lowest silver premium for individuals age 27"
	drop prem_2ndlow tag oneplanoffered 

//Collapse to average premium for all silver plans in the county
count
collapse (mean) Premium_* prem_2nd , by(StateFIPS CountyFIPS)
count
gen test=Premium_Adult_Individual_Age_27-prem_2ndlow
sum test,d   //Only off by about $20

//Rename the premiums variables to indicate that they are for 2017
rename Premium_Child prem_child_2017
rename Premium_Adult_Individual_Age_21 prem_adult21_2017
rename Premium_Adult_Individual_Age_27 prem_adult27_2017
rename Premium_Adult_Individual_Age_30 prem_adult30_2017
rename Premium_Adult_Individual_Age_40 prem_adult40_2017
rename Premium_Adult_Individual_Age_50 prem_adult50_2017
rename Premium_Adult_Individual_Age_60 prem_adult60_2017
rename Premium_Couple_21 prem_couple21_2017
rename Premium_Couple_30 prem_couple30_2017
rename Premium_Couple_40 prem_couple40_2017
rename Premium_Couple_50 prem_couple50_2017
rename Premium_Couple_60 prem_couple60_2017
foreach var in prem_adult21 prem_adult27 prem_adult30 prem_adult40 prem_adult50 prem_adult60 prem_couple21 prem_couple30 prem_couple40 prem_couple50 prem_couple60 prem_child {
		label var `var' "Premium in 2017"
	}

//Save
tab StateFIPS
saveold "$raw_data_path/RawMarketplaceData/premiums2017", replace


*****************************************
* THEN CREATE 2016 FILE 				*
*****************************************
//Open dataset
use "$raw_data_path/RawMarketplaceData/Individual_Market_Medical_07_29_2016", clear

//Keep relevant variables
keep State_Code County_Name Premium_*  Metal_Level
drop Premium_Scenarios
keep if Metal_Level=="Silver"
drop Metal_Level
replace Premium_Child="" if Premium_Child=="++"
destring Premium_Child, replace

//Merge in FIPS codes
rename State_Code state
do "$script_path/1.6.3.add_fips.do"
count if StateFIPS==.|CountyFIPS==.  //0 missing!

//Find 2nd lowest silver premium
gsort StateFIPS CountyFIPS Premium_Adult_Individual_Age_27
bysort StateFIPS CountyFIPS: egen rank = rank(Premium_Adult_Individual_Age_27),unique
gen prem_2ndlow=Premium_Adult_Individual_Age_27 if rank==2
gsort StateFIPS CountyFIPS prem_2ndlow
	//Some counties only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(StateFIPS CountyFIPS)
	gen oneplanoffered=tag==1&prem_2ndlow==.
	replace prem_2ndlow=Premium_Adult_Individual_Age_27 if oneplanoffered==1
	//Carryforward
	carryforward prem_2ndlow, gen(prem_2ndlow_2016)
	label var prem_2ndlow_2016 "2016, 2nd lowest silver premium for individuals age 27"
	drop prem_2ndlow tag oneplanoffered 

//Collapse to average premium for all silver plans in the county
count
collapse (mean) Premium_* prem_2nd , by(StateFIPS CountyFIPS)
count
gen test=Premium_Adult_Individual_Age_27-prem_2ndlow
sum test,d   //Only off by about $20

//Rename the premiums variables to indicate that they are for 2016
rename Premium_Child prem_child_2016
rename Premium_Adult_Individual_Age_21 prem_adult21_2016
rename Premium_Adult_Individual_Age_27 prem_adult27_2016
rename Premium_Adult_Individual_Age_30 prem_adult30_2016
rename Premium_Adult_Individual_Age_40 prem_adult40_2016
rename Premium_Adult_Individual_Age_50 prem_adult50_2016
rename Premium_Adult_Individual_Age_60 prem_adult60_2016
rename Premium_Couple_21 prem_couple21_2016
rename Premium_Couple_30 prem_couple30_2016
rename Premium_Couple_40 prem_couple40_2016
rename Premium_Couple_50 prem_couple50_2016
rename Premium_Couple_60 prem_couple60_2016
foreach var in prem_adult21 prem_adult27 prem_adult30 prem_adult40 prem_adult50 prem_adult60 prem_couple21 prem_couple30 prem_couple40 prem_couple50 prem_couple60 prem_child {
		label var `var' "Premium in 2016"
	}

//Save
tab StateFIPS, m
saveold "$raw_data_path/RawMarketplaceData/premiums2016", replace	

*****************************************
* THEN CREATE 2015 FILE 				*
*****************************************
//Open dataset
use "$raw_data_path/RawMarketplaceData/PY2015_Med-Indi-Land-08-13-2015", clear

//Keep relevant variables
rename State_ State_Code 
gen County_Name =strproper(County)
keep State_Code County_Name Premium_*  Metal_Level
drop Premium_Scenarios
keep if Metal_Level=="Silver"
drop Metal_Level

//Merge in FIPS codes
rename State_Code state
do "$script_path/1.6.3.add_fips.do"
count if StateFIPS==.|CountyFIPS==.  //0 missing!

//Find 2nd lowest silver premium
foreach var of varlist Premium_Child Premium_Adult_Individual_Age_21 Premium_Adult_Individual_Age_27 Premium_Adult_Individual_Age_30_ Premium_Adult_Individual_Age_40_ Premium_Adult_Individual_Age_50_ Premium_Adult_Individual_Age_60_ Premium_Couple_21__ Premium_Couple_30_ Premium_Couple_40_ Premium_Couple_50_ Premium_Couple_60_ {
	replace `var'="" if `var'=="++"
	}
destring Prem*, replace
gsort StateFIPS CountyFIPS Premium_Adult_Individual_Age_27
bysort StateFIPS CountyFIPS: egen rank = rank(Premium_Adult_Individual_Age_27),unique
gen prem_2ndlow=Premium_Adult_Individual_Age_27 if rank==2
gsort StateFIPS CountyFIPS prem_2ndlow
	//Some counties only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(StateFIPS CountyFIPS)
	gen oneplanoffered=tag==1&prem_2ndlow==.
	replace prem_2ndlow=Premium_Adult_Individual_Age_27 if oneplanoffered==1
	//Carryforward
	carryforward prem_2ndlow, gen(prem_2ndlow_2014)
	label var prem_2ndlow_2014 "2014, 2nd lowest silver premium for individuals age 27"
	drop prem_2ndlow tag oneplanoffered 

//Collapse to average premium for all silver plans in the county
count
collapse (mean) Premium_* prem_2nd , by(StateFIPS CountyFIPS)
count
gen test=Premium_Adult_Individual_Age_27-prem_2ndlow
sum test,d   //Only off by about $20

//Rename the premiums variables to indicate that they are for 2015
rename Premium_Child prem_child_2015
rename Premium_Adult_Individual_Age_21 prem_adult21_2015
rename Premium_Adult_Individual_Age_27 prem_adult27_2015
rename Premium_Adult_Individual_Age_30 prem_adult30_2015
rename Premium_Adult_Individual_Age_40 prem_adult40_2015
rename Premium_Adult_Individual_Age_50 prem_adult50_2015
rename Premium_Adult_Individual_Age_60 prem_adult60_2015
rename Premium_Couple_21 prem_couple21_2015
rename Premium_Couple_30 prem_couple30_2015
rename Premium_Couple_40 prem_couple40_2015
rename Premium_Couple_50 prem_couple50_2015
rename Premium_Couple_60 prem_couple60_2015
foreach var in prem_adult21 prem_adult27 prem_adult30 prem_adult40 prem_adult50 prem_adult60 prem_couple21 prem_couple30 prem_couple40 prem_couple50 prem_couple60 prem_child {
		label var `var' "Premium in 2015"
	}

//Save
tab StateFIPS, m
saveold "$raw_data_path/RawMarketplaceData/premiums2015", replace	




*****************************************
* THEN CREATE 2014 FILE 				*
*****************************************
//Open dataset
use "$raw_data_path/RawMarketplaceData/Individual_Market_Medical_8_11_14", clear

//Keep relevant variables
rename State State_Code 
gen County_Name =strproper(County)
keep State_Code County_Name Premium_*  Metal_Level
drop Premium_Scenarios
keep if Metal_Level=="Silver"
drop Metal_Level

//Merge in FIPS codes
rename State_Code state
do "$script_path/1.6.3.add_fips.do"
count if StateFIPS==.|CountyFIPS==.  //0 missing!

//Find 2nd lowest silver premium
gsort StateFIPS CountyFIPS Premium_Adult_Individual_Age_27
bysort StateFIPS CountyFIPS: egen rank = rank(Premium_Adult_Individual_Age_27),unique
gen prem_2ndlow=Premium_Adult_Individual_Age_27 if rank==2
gsort StateFIPS CountyFIPS prem_2ndlow
	//Some counties only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(StateFIPS CountyFIPS)
	gen oneplanoffered=tag==1&prem_2ndlow==.
	replace prem_2ndlow=Premium_Adult_Individual_Age_27 if oneplanoffered==1
	//Carryforward
	carryforward prem_2ndlow, gen(prem_2ndlow_2014)
	label var prem_2ndlow_2014 "2014, 2nd lowest silver premium for individuals age 27"
	drop prem_2ndlow tag oneplanoffered 

//Collapse to average premium for all silver plans in the county
count
collapse (mean) Premium_* prem_2nd , by(StateFIPS CountyFIPS)
count
gen test=Premium_Adult_Individual_Age_27-prem_2ndlow
sum test,d   //Only off by about $20

//Rename the premiums variables to indicate that they are for 2014
rename Premium_Child prem_child_2014
rename Premium_Adult_Individual_Age_21 prem_adult21_2014
rename Premium_Adult_Individual_Age_27 prem_adult27_2014
rename Premium_Adult_Individual_Age_30 prem_adult30_2014
rename Premium_Adult_Individual_Age_40 prem_adult40_2014
rename Premium_Adult_Individual_Age_50 prem_adult50_2014
rename Premium_Adult_Individual_Age_60 prem_adult60_2014
rename Premium_Couple_21 prem_couple21_2014
rename Premium_Couple_30 prem_couple30_2014
rename Premium_Couple_40 prem_couple40_2014
rename Premium_Couple_50 prem_couple50_2014
rename Premium_Couple_60 prem_couple60_2014
foreach var in prem_adult21 prem_adult27 prem_adult30 prem_adult40 prem_adult50 prem_adult60 prem_couple21 prem_couple30 prem_couple40 prem_couple50 prem_couple60 prem_child {
		label var `var' "Premium in 2014"
	}

//Save
tab StateFIPS, m
saveold "$raw_data_path/RawMarketplaceData/premiums2014", replace	

*****************************************
* FINALLY MERGE ANNUAL FILES			*
*****************************************
merge 1:1 StateFIPS CountyFIPS using "$raw_data_path/RawMarketplaceData/premiums2015"
//These counties are in 2014 but not in 2015
list StateFIPS CountyFIPS if _merge==1 
//These counties are in 2015 but not in 2014. (2014 does not contain HI, NM, NV, OR)
list StateFIPS CountyFIPS if _merge==2
drop _merge
		
merge 1:1 StateFIPS CountyFIPS using "$raw_data_path/RawMarketplaceData/premiums2016"
//These counties are in 2014/15 but not in 2016
list StateFIPS CountyFIPS if _merge==1 
//These counties are in 2016 but not in 2014/15. (2014 does not contain HI, NM, NV, OR)
list StateFIPS CountyFIPS if _merge==2
drop _merge

merge 1:1 StateFIPS CountyFIPS using "$raw_data_path/RawMarketplaceData/premiums2017"
//These counties are in 2014/16 but not in 2017
list StateFIPS CountyFIPS if _merge==1 
//These counties are in 2017 but not in 2014/16
list StateFIPS CountyFIPS if _merge==2
drop _merge

//Calculate the 2014-17 change in premiums
foreach var in prem_2ndlow prem_adult21 prem_adult27 prem_adult30 prem_adult40 prem_adult50 prem_adult60 prem_couple21 prem_couple30 prem_couple40 prem_couple50 prem_couple60 prem_child {
	gen `var'_change=`var'_2017-`var'_2014
	label var `var'_change "Dollar change in premium from 2014 to 2017"
	gen `var'_pctchange=(`var'_2017-`var'_2014)/(`var'_2014)
	label var `var'_pctchange "Percent change in premium from 2014 to 2017"
	sum `var'_change `var'_pctchange
	}

rename StateFIPS state
rename CountyFIPS county	
	
//Save and exit
d
local saveas premiums_cty
label data " `saveas' | `datades' | `dt'"
note: `saveas'.dta | `task' | `tag'
compress
save "$raw_data_path/`saveas'.dta", replace	

!rm -r "$raw_data_path/RawMarketplaceData"
!rm -r "$raw_data_path/__MACOSX"
//Erase intermediate files


log close
exit
