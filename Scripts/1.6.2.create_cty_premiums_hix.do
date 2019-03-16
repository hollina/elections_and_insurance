// Program setup
capture log close
clear all
set linesize 200
set more off
matrix drop _all
local project ElectionACA
local datades Marketplace premiums for counties, all states
local pgm data3-cty_premiums_allstates
local dt $date
local task Prepare marketplace premiums file, all states
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

//Clean the rating area to county crosswalk, which I will use to add county data to the HIX files
//This dataset from Kosali Simon (simonkos@indiana.edu).

use "$raw_data_path/ratingareacounty_xwalk2014", clear
rename county County_Name
do "$script_path/1.6.3.add_fips.do"
drop if state=="PR"|state=="VI"
count if StateFIPS==.  //should be zero!
count if CountyFIPS==.  //should be zero!
rename state statename
rename StateFIPS state
rename CountyFIPS county
rename ratingarea area
*Some counties are listed twice. Drop duplicates.
	egen tag=tag(state county)
	keep if tag==1
	count
keep state statename county area
misstable sum
compress
save "$raw_data_path/ratingareacounty_xwalk2014_clean.dta", replace	

// Unzip HIX Compare files
!unzip "$raw_data_path/RawHIXData.zip" -d "$raw_data_path"


//Clean the HIX Compare files, downloaded from Robert Wood Johnson Foundation
//In dataset, each row represents a different plan
**YEAR 2014
//All plans in this dataset are silver, according to the HIX website
use "$raw_data_path/RawHIXData/2014_HIX_Compare", clear
rename State statename
rename PremiumAdultIndividualAge27 premi27
split RatingArea
rename RatingArea3 area
keep statename premi27 area
replace premi27="" if premi27=="Not Available "
destring premi27 area, replace
*Find second-lowest silver plan
	gsort statename area premi27
	drop in 1 //Empty observation
	bysort state area: egen rank = rank(premi27),unique
	gen prem=premi27 if rank==2
	gsort state area prem
*Some areas only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(state area)
	gen oneplanoffered=tag==1&prem==.
	sum oneplanoffered
	replace prem=premi27 if oneplanoffered==1
*Condense to a rating area - level dataset
	sum prem if tag==0  //Should be zero!
	keep if tag==1
	rename prem prem_2014
	label var prem_2014 "2014, 2nd lowest silver premium for individuals age 27"
	keep statename area prem_2014
*Save dataset
	count
	compress
	save "$raw_data_path/RawHIXData/2014_HIX_Compare_clean.dta", replace
		
		
		

**YEAR 2015
use "$raw_data_path/RawHIXData/2015_HIX_Compare", clear
rename st statename
keep year statename area metal premi27
*Find second-lowest silver plan
	keep if metal=="Silver"
	drop metal
	gsort statename area premi27
	bysort state area: egen rank = rank(premi27),unique
	gen prem=premi27 if rank==2
	gsort state area prem
*Some areas only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(state area)
	gen oneplanoffered=tag==1&prem==.
	sum oneplanoffered
	replace prem=premi27 if oneplanoffered==1
*Condense to a rating area - level dataset
	sum prem if tag==0  //Should be zero!
	keep if tag==1
	rename prem prem_2015
	label var prem_2015 "2015, 2nd lowest silver premium for individuals age 27"
	keep statename area prem_2015
*Fix the CO issue		**CO 10 & 11 were combined and called area 9. Areas 8 & 9 were combined and called area 8. https://www.cohealthinfo.com/?s=Colorado+Geographical+Rating+Areas
	expand 2 if statename=="CO"& area==9
	expand 2 if statename=="CO"&area==8
	sort statename area
	replace area=11 in 60
	replace area=10 in 59
	replace area=9 in 58
*Save dataset
		count
		compress
		save "$raw_data_path/RawHIXData/2015_HIX_Compare_clean.dta", replace

	
**YEAR 2016
use "$raw_data_path/RawHIXData/2016_HIX_Compare", clear
rename st statename
keep year statename area metal premi27
*Fix the area variable so it's numeric
	gen area2=substr(area,3,2)
	destring area2, replace
	count
	sum area2
	drop area
	rename area2 area
*Find second-lowest silver plan
	keep if metal=="Silver"
	drop metal
	gsort statename area premi27
	bysort state area: egen rank = rank(premi27),unique
	gen prem=premi27 if rank==2
	gsort state area prem
*Some areas only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(state area)
	gen oneplanoffered=tag==1&prem==.
	sum oneplanoffered
	replace prem=premi27 if oneplanoffered==1
*Condense to a rating area - level dataset
	sum prem if tag==0  //Should be zero!
	keep if tag==1
	rename prem prem_2016
	label var prem_2016 "2016, 2nd lowest silver premium for individuals age 27"
	keep statename area prem_2016
*Fix the CO issue
	expand 2 if statename=="CO"& area==9
	expand 2 if statename=="CO"&area==8
	sort statename area
	replace area=11 in 60
	replace area=10 in 59
	replace area=9 in 58
*Save dataset
		count
		compress
		save "$raw_data_path/RawHIXData/2016_HIX_Compare_clean.dta", replace
	
	
**YEAR 2017
use "$raw_data_path/RawHIXData/2017_HIX_Compare", clear
rename st statename
keep year statename area metal premi27
*Fix the area variable so it's numeric
	gen area2=substr(area,3,2)
	destring area2, replace
	count
	sum area2
	drop area
	rename area2 area
*Find second-lowest silver plan
	keep if metal=="Silver"
	drop metal
	gsort statename area premi27
	bysort state area: egen rank = rank(premi27),unique
	gen prem=premi27 if rank==2
	gsort state area prem
*Some areas only had one plan offered, so need to make these "ranked 2"
	egen tag=tag(state area)
	gen oneplanoffered=tag==1&prem==.
	sum oneplanoffered
	replace prem=premi27 if oneplanoffered==1
*Condense to a rating area - level dataset
	sum prem if tag==0  //Should be zero!
	keep if tag==1
	rename prem prem_2017
	label var prem_2017 "2017, 2nd lowest silver premium for individuals age 27"
	keep statename area prem_2017
*CO not included in this dataset at all 
*Save dataset
		count
		compress
		save "$raw_data_path/RawHIXData/2017_HIX_Compare_clean.dta", replace
		

//Merge 2015-17 HIX Compare Data together
use "$raw_data_path/RawHIXData/2014_HIX_Compare_clean.dta", clear
merge 1:1 statename area using "$raw_data_path/RawHIXData/2015_HIX_Compare_clean.dta"
	list if _merge==1  //Rating areas present in 2014 but not 2015
		**NO ISSUES
	list if _merge==2  //Rating areas present in 2015 but not 2014
		**NO ISSUES
	drop _merge
merge 1:1 statename area using "$raw_data_path/RawHIXData/2016_HIX_Compare_clean.dta"
	list if _merge==1  //Rating areas present in 2014/15 but not 2016
		**NO ISSUES
	list if _merge==2  //Rating areas present in 2016 but not 2015
		**ISSUES WITH NJ MISSING RATING AREAS 2-5 IN 2015
	drop _merge
merge 1:1 statename area using "$raw_data_path/RawHIXData/2017_HIX_Compare_clean.dta"
	list if _merge==1  //Rating areas present in 2015/16 but not 2017
		**2017 DATA NOT AVAILABLE FOR CA, CO, CT, DC, ID, MA, MD, MN, NY, RI, VT, WA
	list if _merge==2  //Rating areas present in 2017 but not 2015/16
		**NO ISSUES
	drop _merge
*Merge in county data
merge 1:m statename area using "$raw_data_path/ratingareacounty_xwalk2014_clean.dta"
	list if _merge==1  //Have premiums data but could not match to counties
		replace state=6  if statename=="CA"
		replace state=34 if statename=="NJ"
		replace state=25 if statename=="MA"
		*CA, rating area 15 is LA county,  but I already have LA county
			drop if state==6&area==15
		*MA, rating area 3 covers zip codes 017 and 019, but I already have MA counties covered
			drop if state==25&area==3
		*NJ, rating areas 2-5 are only for the small group market
			drop if state==34&(area==2|area==3|area==4|area==5|area==6)
	list if _merge==2  //Have counties data but no premiums data. Can safely drop
		drop if _merge==2
	drop _merge

	
//Calculate the change in premiums
gen prem_change_14_17=prem_2017-prem_2014
	label var prem_change_14_17 "Dollar change in premium from 2014 to 2017, all from HIX"
gen prem_pctchange_14_17=100*(prem_2017-prem_2014)/(prem_2014)
	label var prem_pctchange_14_17 "Percent change in premium from 2014 to 2017, all from HIX"
sum prem_change_14_17 prem_pctchange_14_17
	
gen prem_change_14_16=prem_2016-prem_2014
	label var prem_change_14_16 "Dollar change in premium from 2014 to 2016, all from HIX"
gen prem_pctchange_14_16=100*(prem_2016-prem_2014)/(prem_2014)
	label var prem_pctchange_14_16 "Percent change in premium from 2014 to 2016, all from HIX"
sum prem_change_14_16 prem_pctchange_14_16


//Merge in healthcare.gov data as well
merge 1:1 state county using "$raw_data_path/premiums_cty.dta"
	tab statename if _merge==1 //These are all the SBM states, as expected
	drop _merge
	
//Identify the state-based and ffm's
tab statename if prem_adult27_2014==.
gen ffm=1
replace ffm=0 if prem_adult27_2014==.
label var ffm "Federally facilitated marketplace"
	
//Create 2 additional independent variables
gen prem_change_14_16_MS=prem_change_14_16
	replace prem_change_14_16_MS=prem_adult27_2016-prem_adult27_2014 if statename=="MS"
	label var prem_change_14_16_MS "Dollar change in premium from 2014 to 2016, MS from healthcare.gov dataset"
gen prem_pctchange_14_16_MS=prem_pctchange_14_16
	replace prem_pctchange_14_16_MS=100*(prem_adult27_2016-prem_adult27_2014)/(prem_adult27_2014) if statename=="MS"
	label var prem_pctchange_14_16_MS "Percent change in premium from 2014 to 2016, MS from healthcare.gov"
sum prem_change_14_16_MS prem_pctchange_14_16_MS



gen prem_change_14_16_ffm=prem_change_14_16
	replace prem_change_14_16_ffm=prem_adult27_2016-prem_adult27_2014 if ffm==1
	label var prem_change_14_16_ffm "Dollar change in premium from 2014 to 2016, all FFM states from healthcare.gov"
gen prem_pctchange_14_16_ffm=prem_pctchange_14_16
	replace prem_pctchange_14_16_ffm=100*(prem_adult27_2016-prem_adult27_2014)/(prem_adult27_2014) if ffm==1
	label var prem_pctchange_14_16_ffm "Percent change in premium from 2014 to 2016, all FFM states from healthcare.gov"
sum prem_change_14_16_ffm prem_pctchange_14_16_ffm
	

//Create yearly independent variables, just for FFM states from healthcare.gov data
gen prem_adult27_pctchange_16_17=100*(prem_adult27_2017-prem_adult27_2016)/(prem_adult27_2016)
	label var prem_adult27_pctchange_16_17 "Percent change in premium from 2016 to 2017, all from healthcare.gov"
gen prem_adult27_pctchange_15_16=100*(prem_adult27_2016-prem_adult27_2015)/(prem_adult27_2015)
	label var prem_adult27_pctchange_15_16 "Percent change in premium from 2015 to 2016, all from healthcare.gov"
gen prem_adult27_pctchange_14_15=100*(prem_adult27_2015-prem_adult27_2014)/(prem_adult27_2014)
	label var prem_adult27_pctchange_14_15 "Percent change in premium from 2014 to 2015, all from healthcare.gov"
gen prem_adult27_pctchange_14_16=100*(prem_adult27_2016-prem_adult27_2014)/(prem_adult27_2014)
	label var prem_adult27_pctchange_14_16 "Percent change in premium from 2014 to 2016, all from healthcare.gov"
rename prem_adult27_pctchange prem_adult27_pctchange_14_17
	label var prem_adult27_pctchange_14_17 "Percent change in premium from 2014 to 2017, all from healthcare.gov"
	
	
	
//Save dataset
keep state statename county area prem_change_14_16 prem_pctchange_14_16 ///
	prem_change_14_16_MS prem_pctchange_14_16_MS prem_change_14_16_ffm prem_pctchange_14_16_ffm ///
	prem_change_14_17 prem_pctchange_14_17 prem_adult27_pctchange_14_17 prem_adult27_pctchange_16_17  ///
	prem_adult27_pctchange_15_16 prem_adult27_pctchange_14_15 prem_adult27_pctchange_14_16
sum
local saveas premiums_cty_allstates
label data " `saveas' | `datades' | `dt'"
note: `saveas'.dta | `task' | `tag'
compress
save "$data_path/`saveas'.dta", replace	

erase "$raw_data_path/ratingareacounty_xwalk2014_clean.dta"
erase "$raw_data_path/premiums_cty.dta"

!rm -r "$raw_data_path/RawHIXData"
!rm -r "$raw_data_path/__MACOSX"


log close
exit
	
