// Program setup
capture log close
clear all
set linesize 255
set more off
matrix drop _all
local project ElectionACA
local pgm data4-create_election_panel_2008_2016
local dt $date
local task Prepare county X year panel data
local who AlexHollingsworth
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "


//Open election data and reshape to long dataset
use "$data_path/election_2008_2016", clear
rename numb_total_08 numb_total2008 
rename numb_total_12 numb_total2012
rename numb_total_16 numb_total2016 
rename numb_dem_08 numb_dem2008 
rename numb_dem_12 numb_dem2012
rename numb_dem_16 numb_dem2016 
rename numb_gop_08 numb_gop2008
rename numb_gop_12 numb_gop2012
rename numb_gop_16 numb_gop2016 
rename numb_oth_08 numb_oth2008
rename numb_oth_12 numb_oth2012
rename numb_oth_16 numb_oth2016

reshape long numb_total numb_dem numb_gop numb_oth ///
	, i(StateFIPS CountyFIPS state_name combined_fips county) j(year)

//Generate vote share outcome variables
gen voteshare_dem=100*numb_dem/numb_total	
	label var voteshare_dem "Democratic Vote Share [0-100]"
gen voteshare_gop=100*numb_gop/numb_total	
	label var voteshare_gop "Republican Vote Share [0-100]"
gen voteshare_oth=100*numb_oth/numb_total	
	label var voteshare_oth "Other Vote Share [0-100]"

//Run some tests to make sure vote share variables are accurate	
gen test=voteshare_dem+voteshare_gop+voteshare_oth
sum test,d //Should be all 100
count if test!=100 
drop test
/* LAPORTE COUNTY, IN AND LACLEDE COUNTY, MO HAVE WEIRD DATA IN 2008 */


//Add Medicaid expansion variables
statastates, fips(StateFIPS)
	drop if _merge==2
	drop _merge state_name
	rename StateFIPS state
	rename state_abbrev statename
	rename county countyname
	rename CountyFIPS county
local state AK AZ AR CA CO CT DE DC HI IL IN IA KY LA MD MA MI MN MT NV NH NJ NM NY ND OH OR PA RI VT WA WV
gen expansion=0
	foreach st in `state' {
		replace expansion=1 if statename=="`st'"
		}
	label var expansion "Expansion"
gen post=year>=2014
	label var post "Post-2014"
gen postexp=post*expansion
	label var postexp "Expansion X Post-2014"

	
//Merge in county population for 2008, 12, 16
merge 1:1 state county year using "$data_path/cty_pop_19ages_1990_2017"
list state county statename countyname year if _merge==1  //Missing population data for Bedford County, VA for all 3 years
drop if _merge==2
drop _merge 
sum pop_total perc_white perc_black perc_native perc_asian perc_nonwhite perc_above65 perc_female
replace pop_total=pop_total/100000
	label var pop_total "Total County Population (100k)"


//Merge in county unemployment rates for 2008, 12, 16
merge 1:1 state county year using "$data_path/cty_unemp_2008_2016"
list state county statename countyname year if _merge==1  //Missing data for Shannon County, SD for all 3 years
drop if _merge==2
drop _merge cty_labor_force cty_employed cty_unemployed 
rename cty_unemp unemp_rate_cty
label var unemp_rate_cty "County Unemployment Rate [0-100]"


//Merge in county income/poverty rates for 2008, 12, 16
merge 1:1 state county year using "$data_path/saipe_county_2003_2017"
list state county statename countyname year if _merge==1  //Missing data for Shannon County, SD for 2016
drop if _merge==2
rename pov_rate_all_ages percent_in_poverty
drop _merge pov_0_17 pov_rate_0_17 pov_5_17 pov_rate_5_17 pov_all_ages
replace median_income=median_income/10000
	label var median_income "County Median Household Income ($10k)"
label var percent_in_poverty "Percent in Poverty [0-100]"


//Merge in county uninsurance rates for 2008, 12, 16 
//<400 % FPL
count
merge 1:m state county year using "$data_path/sahie_county_2008_2016"
list state county statename countyname year if _merge==1  //Missing data for Shannon County, SD for 2016
drop if _merge==2
keep if agecat==1&racecat==0&sexcat==0&iprcat==4
drop agecat racecat sexcat iprcat nipr nipr_moe nui nui_moe nic  ///
	nic_moe pctui_moe pctic_moe pctelig pctelig_moe pctliic pctliic_moe statelong _merge 
rename (pctui pctic) (pctui_0400 pctic_0400)
label var pctui_0400 "Percent Uninsured, 18-64, <400% FPL [0-100]"
label var pctic_0400 "Percent Insured, 18-64, <400% FPL [0-100]"

//<138% FPL
count
merge 1:m state county year using "$data_path/sahie_county_2008_2016"
list state county statename countyname year if _merge==1  //Missing data for Shannon County, SD for 2016
drop if _merge==2
keep if agecat==1&racecat==0&sexcat==0&iprcat==3
drop agecat racecat sexcat iprcat nipr nipr_moe nui nui_moe nic ///
	nic_moe pctui_moe pctic_moe pctelig pctelig_moe pctliic pctliic_moe statelong _merge
rename (pctui pctic) (pctui_138 pctic_138)
label var pctui_138 "Percent Uninsured, 18-64, <138% FPL [0-100]"
label var pctic_138 "Percent Insured, 18-64, <138% FPL [0-100]"
count


//Merge in baseline county uninsurance rates
merge m:1 state county using "$data_path/sahie_county_0_138_2013"
drop if _merge==2
rename (pctui_2013 pctic_2013) (pctui2013_138 pctic2013_138)
drop statelong _merge

merge m:1 state county using "$data_path/sahie_county_0_400_2013"
drop if _merge==2
rename (pctui_2013 pctic_2013) (pctui2013_0400 pctic2013_0400)
drop statelong _merge

gen postexppctui_0400=post*expansion*pctui2013_0400
	label var postexppctui_0400 "Expansion X Post-2014 X Baseline Uninsurance Rate"
gen postexppctui_138=post*expansion*pctui2013_138
	label var postexppctui_138 "Expansion X Post-2014 X Baseline Uninsurance Rate"
gen postpctui_0400=post*pctui2013_0400
	label var postpctui "Post-2014 X Baseline Uninsurance Rate"
gen postpctui_138=post*pctui2013_138
	label var postpctui_138 "Post-2014 X Baseline Uninsurance Rate"
gen exppctui_0400=expansion*pctui2013_0400
	label var exppctui "Expansion X Baseline Uninsurance Rate"
gen exppctui_138=expansion*pctui2013_138
	label var exppctui_138 "Expansion X Baseline Uninsurance Rate"

preserve
use "$data_path/sahie_county_2008_2016", clear
	keep if year==2014&agecat==1&racecat==0&sexcat==0&iprcat==3
	rename pctic pctic2014_0400
	label var pctic2014_0400 "Percent Insured in 2014, 18-64, <400% FPL [0-100]"
	keep state county pctic2014_0400
	saveold "$data_path/temp", replace
restore
merge m:1 state county using "$data_path/temp"
drop if _merge==2
drop _merge
erase "$data_path/temp.dta
gen pctic_change_0400_14_13=pctic2014_0400-pctic2013_0400
	label var pctic_change_0400_14_13 "Change in percent insured from 2014 to 2013, 18-64, <400% FPL [0-100]"
	sum pctic_change_0400_14_13 [weight=pop_total]
	
	
//Merge in county marketplace premiums
merge m:1 state county using "$data_path/premiums_cty_allstates"
drop if _merge==2
drop _merge area prem_adult27_pctchange_14_17 prem_change_14_16_MS prem_pctchange_14_16_MS ///
	prem_adult27_pctchange_16_17 prem_adult27_pctchange_15_16 prem_adult27_pctchange_14_15 ///
	prem_adult27_pctchange_14_16	

	
// Merge in Advertising Data
merge 1:1 year combined_fips using "$data_path/presidential_election_spending_by_party_08_12_16.dta"
replace dem_campaign_spending  = 0 if _merge==1
replace total_campaign_spending  = 0 if _merge==1
replace gop_campaign_spending  = 0 if _merge==1
replace dem_campaign_spending_gap  = 0 if _merge==1
drop if _merge==2
drop _merge


//Merge in population density data
rename (state county) (StateFIPS CountyFIPS)
merge m:1 StateFIPS CountyFIPS using "$raw_data_path/land_area_2000.dta"
drop _merge
gen pop_den_100k = ((pop_total)/land_area)*100
label var pop_den_100k "Population Density, 1k per sq. mi"
rename (StateFIPS CountyFIPS) (state county) 


/* GENERATE VARIABLES NEEDED FOR ANALYSIS */
gen turnout=100*(numb_total/(pop_total*100000))
label var turnout "Voter Turnout [0-100]"
	list combined_fips countyname statename numb_total pop_total turnout if turnout>100&year!=2004
	//There are 7 counties that have >100% voter turnout. Wrong population data?
	//And there are 3 counties with missing voter turnout because no population data

label var pctic_0400 "Insurance Rate [0-100]"
label var pctui2013_0400 "Baseline Uninsurance Rate, <400% FPL"
egen tag=tag(state county)
	centile prem_pctchange_14_16_ffm if tag==1, centile(33.33 66.67)
	gen prem_tertile=.
		replace prem_tertile=1 if prem_pctchange_14_16_ffm<=3.773806
		replace prem_tertile=2 if prem_pctchange_14_16_ffm>3.773806&prem_pctchange_14_16_ffm<=20.5272
		replace prem_tertile=3 if prem_pctchange_14_16_ffm>20.5272&prem_pctchange_14_16_ffm<.
		label var prem_tertile "Premium increase from 2014-16. 1 is lowest increase, 2 is medium increase, 3 is highest increase."

	centile pctic_0400 if tag==1, centile(20 40 60 80)
	gen pctic_0400_quintile=.
	replace pctic_0400_quintile=1 if pctic_0400<=67.3
	replace pctic_0400_quintile=2 if pctic_0400>67.3&pctic_0400<=71.5
	replace pctic_0400_quintile=3 if pctic_0400>71.5&pctic_0400<=75
	replace pctic_0400_quintile=4 if pctic_0400>75&pctic_0400<=79
	replace pctic_0400_quintile=5 if pctic_0400>79&pctic_0400<.
	label var pctic_0400_quintile "Quintile of baseline  insurance rate"
	
	gen pctic_0400_quintile5=pctic_0400_quintile==5
	tab pctic_0400_quintile5,m
	tab statename if pctic_0400_quintile5==1
	label var pctic_0400_quintile5 "Highest quintile of baseline  insurance rate"
drop tag
	
gen pctic_0400exp=pctic_0400*expansion
	label var pctic_0400exp "Expansion X Percent Insured"
gen postpctic_0400exp=post*pctic_0400*expansion
	label var postpctic_0400exp "Post-2014 X Expansion X Percent Insured"
gen postpctic_0400=post*pctic_0400
	label var postpctic_0400 "Post-2014 X Percent Insured"

gen pctui2013_0400exp=pctui2013_0400*expansion
	label var pctui2013_0400exp "Expansion X 2013 Uninsurance Rate"
gen postpctui2013_0400exp=post*pctui2013_0400*expansion
	label var postpctui2013_0400exp "Post-2014 X Expansion X 2013 Uninsurance Rate"
gen postpctui2013_0400=post*pctui2013_0400
	label var postpctui2013_0400 "Post X 2013 Uninsurance Rate"
	
//Generate change in vote share from 2012 to 2016
sort combined_fips year
foreach y in voteshare_dem voteshare_gop voteshare_oth turnout unemp_rate_cty {
	foreach z in 2004 2008 2012 2016 {
		gen `y'_`z'=`y' if year==`z'
		qui levelsof combined_fips, local(lm_group)
		foreach group in `lm_group' {
			qui levelsof `y'_`z' if combined_fips == `group', local(lm_value)
			cap qui replace `y'_`z' = `lm_value' if combined_fips == `group'
			}
		}
	}
foreach y in voteshare_dem voteshare_gop voteshare_oth turnout unemp_rate_cty {
	gen `y'_change_16_12=`y'_2016-`y'_2012
	label var `y'_change "Change in `y' from 2012 to 2016"
	list combined_fips year `y' `y'_change_16_12 in 1/40
	}


/* SAVE DATASET */
sort state county year
compress
saveold "$data_path/election_panel_2008_2016", replace


// We need add in 2004 election data for our lags and leads plot.
clear all


/*
These were provided by the National Map project by the USGS. 
Available here, 
https://www.baruch.cuny.edu/confluence/display/geoportal/US+Presidential+Election+County+Results.
*/

// Import data 
import delimited "$raw_data_path/elpo04p020.csv", encoding(ISO-8859-1)

// Make sure missing are marked correctly
replace vote_oth = . if vote_oth==-9999
replace vote_rep = . if vote_rep==-9999
replace vote_dem = . if vote_dem==-9999
replace total_vote = . if total_vote==-9999

// Create vote share
gen voteshare_dem = (vote_dem/total_vote)*100
gen voteshare_gop = (vote_rep/total_vote)*100
gen voteshare_oth = (vote_oth/total_vote)*100
  
// Rename variables to match existing dataset
rename fips  combined_fips
rename vote_dem numb_dem 
rename  vote_rep numb_gop 
rename vote_oth numb_oth
rename total_vote numb_total

// Drop what we do not need
drop percent*

// Generate year 
gen year = 2004

keep year combined_fips voteshare_* numb_*
 
// Append to existing data 
append using "$data_path/election_panel_2008_2016"

// Save
compress
save "$data_path/election_panel_2008_2016", replace

// Clean up
erase  "$data_path/saipe_state_2003_2017.dta"
erase  "$data_path/cty_pop_19ages_1990_2017.dta"
erase  "$data_path/cty_unemp_2008_2016.dta"
erase  "$data_path/election_2008_2016.dta"
erase  "$data_path/premiums_cty_allstates.dta"
erase  "$data_path/presidential_election_spending_by_party_08_12_16.dta"
erase  "$data_path/sahie_county_0_138_2008_2016.dta"
erase  "$data_path/sahie_county_0_138_2013.dta"
erase  "$data_path/sahie_county_0_400_2008_2016.dta"
erase  "$data_path/sahie_county_0_400_2013.dta"
erase  "$data_path/sahie_county_2008_2016.dta"
erase  "$data_path/saipe_county_2003_2017.dta"

	
log close
exit	
