*https://github.com/tonmcg/County_Level_Election_Results_12-16
*Cloned on 28 Feb 2017 at 3:30pm

// Program setup
capture log close
clear all
set linesize 255
set more off
matrix drop _all
local project ElectionACA
local pgm data1-clean_election_data_2008_2016
local dt $date
local task Clean election data
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

!unzip "$raw_data_path/ElectionData.zip" -d "$raw_data_path"

// Import 2016 Updated Data
	import delimited "$raw_data_path/ElectionData/US_County_Level_Presidential_Results_12-16.csv", encoding(ISO-8859-1)
	keep combined_fips votes_dem_2016 votes_gop_2016 total_votes_2016
	save "$raw_data_path/ElectionData/updated_2016.dta", replace

// Add on 2012 and 2008 data
	clear all
	import delimited "$raw_data_path/ElectionData/US_County_Level_Presidential_Results_08-16.csv", encoding(ISO-8859-1)
	rename fips_code combined_fips
	merge 1:1 combined_fips using "$raw_data_path/ElectionData/updated_2016.dta"
	keep if _merge==3 //We are dropping Alaska
	
// See if there are differences between the 2016 data in the second file and the updated one

	gen check_dem = votes_dem_2016-dem_2016 
	gen check_gop = votes_gop_2016-gop_2016
	gen check_tot = total_votes_2016-total_2016
	
// If it's positive this means that there are more. This makes sense if we think the issue is votes being tallied
// Only three observations are less than zero. 
// We will use the updated results

// Drop what we don't need 
	drop check* _merge dem_2016 gop_2016 oth_2016 total_2016
	
// Rename to be consistent 
	rename total_votes_2016 numb_total_16
	rename  votes_gop_2016 numb_gop_16
	rename  votes_dem_2016 numb_dem_16
	
	rename total_2012 numb_total_12
	rename  gop_2012 numb_gop_12
	rename  dem_2012 numb_dem_12
	rename  oth_2012 numb_oth_12

	rename total_2008 numb_total_08
	rename  gop_2008 numb_gop_08
	rename  dem_2008 numb_dem_08
	rename  oth_2008 numb_oth_08

// Create other votes for 2016
	gen numb_oth_16 = numb_total_16 - numb_gop_16 - numb_dem_16
	sum numb_oth_16

// Break up fips code into state and year
	gen str5 fips_string=string(combined_fips, "%05.0f")
	gen StateFIPS=substr(fips_string, 1,2)
	gen CountyFIPS=substr(fips_string, 3,5)
	destring CountyFIPS, replace
	destring StateFIPS, replace
	drop fips_string
	
//Add State Name
	gen state_name=""
	
	replace state_name=	"ALASKA"	if StateFIPS==	2
	replace state_name=	"ALABAMA"	if StateFIPS==	1
	replace state_name=	"ARKANSAS"	if StateFIPS==	5
	replace state_name=	"AMERICAN SAMOA"	if StateFIPS==	60
	replace state_name=	"ARIZONA"	if StateFIPS==	4
	replace state_name=	"CALIFORNIA"	if StateFIPS==	6
	replace state_name=	"COLORADO"	if StateFIPS==	8
	replace state_name=	"CONNECTICUT"	if StateFIPS==	9	
	replace state_name=	"DISTRICT OF COLUMBIA"	if StateFIPS==	11
	replace state_name=	"DELAWARE"	if StateFIPS==	10
	replace state_name=	"FLORIDA"	if StateFIPS==	12
	replace state_name=	"GEORGIA"	if StateFIPS==	13
	replace state_name=	"GUAM"	if StateFIPS==	66
	replace state_name=	"HAWAII"	if StateFIPS==	15
	replace state_name=	"IOWA"	if StateFIPS==	19
	replace state_name=	"IDAHO"	if StateFIPS==	16
	replace state_name=	"ILLINOIS"	if StateFIPS==	17
	replace state_name=	"INDIANA"	if StateFIPS==	18
	replace state_name=	"KANSAS"	if StateFIPS==	20
	replace state_name=	"KENTUCKY"	if StateFIPS==	21
	replace state_name=	"LOUISIANA"	if StateFIPS==	22
	replace state_name=	"MASSACHUSETTS"	if StateFIPS==	25
	replace state_name=	"MARYLAND"	if StateFIPS==	24
	replace state_name=	"MAINE"	if StateFIPS==	23
	replace state_name=	"MICHIGAN"	if StateFIPS==	26
	replace state_name=	"MINNESOTA"	if StateFIPS==	27
	replace state_name=	"MISSOURI"	if StateFIPS==	29
	replace state_name=	"MISSISSIPPI"	if StateFIPS==	28
	replace state_name=	"MONTANA"	if StateFIPS==	30
	replace state_name=	"NORTH CAROLINA"	if StateFIPS==	37
	replace state_name=	"NORTH DAKOTA"	if StateFIPS==	38
	replace state_name=	"NEBRASKA"	if StateFIPS==	31
	replace state_name=	"NEW HAMPSHIRE"	if StateFIPS==	33
	replace state_name=	"NEW JERSEY"	if StateFIPS==	34
	replace state_name=	"NEW MEXICO"	if StateFIPS==	35
	replace state_name=	"NEVADA"	if StateFIPS==	32
	replace state_name=	"NEW YORK"	if StateFIPS==	36
	replace state_name=	"OHIO"	if StateFIPS==	39
	replace state_name=	"OKLAHOMA"	if StateFIPS==	40
	replace state_name=	"OREGON"	if StateFIPS==	41
	replace state_name=	"PENNSYLVANIA"	if StateFIPS==	42
	replace state_name=	"PUERTO RICO"	if StateFIPS==	72
	replace state_name=	"RHODE ISLAND"	if StateFIPS==	44
	replace state_name=	"SOUTH CAROLINA"	if StateFIPS==	45
	replace state_name=	"SOUTH DAKOTA"	if StateFIPS==	46
	replace state_name=	"TENNESSEE"	if StateFIPS==	47
	replace state_name=	"TEXAS"	if StateFIPS==	48
	replace state_name=	"UTAH"	if StateFIPS==	49
	replace state_name=	"VIRGINIA"	if StateFIPS==	51
	replace state_name=	"VIRGIN ISLANDS"	if StateFIPS==	78
	replace state_name=	"VERMONT"	if StateFIPS==	50
	replace state_name=	"WASHINGTON"	if StateFIPS==	53
	replace state_name=	"WISCONSIN"	if StateFIPS==	55
	replace state_name=	"WEST VIRGINIA"	if StateFIPS==	54
	replace state_name=	"WYOMING"	if StateFIPS==	56

	replace state_name=proper(state_name)
// Save Election Data
	compress
	save "$data_path/election_2008_2016.dta", replace
	erase "$raw_data_path/ElectionData/updated_2016.dta"
	!rm -r "$raw_data_path/ElectionData"
	!rm -r "$raw_data_path/__MACOSX"
log close
exit
