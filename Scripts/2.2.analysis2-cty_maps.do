// Program setup
capture log close
clear all
set linesize 80
set more off
matrix drop _all
local project ElectionACA
local pgm analysis2-cty_maps
local dt $date
local task Create maps
local who AlexHolllingsworth
local tag " `pgm'.do `who' `dt'"

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

// Open dataset
use "$data_path/election_panel_2008_2016", clear

// Merge in 2010 Census Variables
	rename state StateFIPS
	rename county CountyFIPS
	replace CountyFIPS=86 if StateFIPS ==12 & CountyFIPS==25 
	
// XTSET
	xtset combined_fips year

// Generate four year differences
	gen diff_tot=numb_total - L4.numb_total
	gen diff_dem=numb_dem - L4.numb_dem
	gen diff_gop=numb_gop - L4.numb_gop
	gen diff_oth=numb_oth - L4.numb_oth
	
	
// Label The Variables
	label variable diff_tot "Change in Total Votes Cast"
	label variable diff_dem "Change in Democratic Votes"
	label variable diff_gop "Change in Republican Votes"
	label variable diff_oth "Change in Third Party Votes"
	
// Generate four year percent differences
	gen p_diff_dem=voteshare_dem - L4.voteshare_dem
	gen p_diff_gop=voteshare_gop - L4.voteshare_gop
	gen p_diff_oth=voteshare_oth - L4.voteshare_oth
	
// Label The Variables
	label variable p_diff_dem "Percent Change in Democratic Votes"
	label variable p_diff_gop "Percent Change in Republican Votes"
	label variable p_diff_oth "Percent Change in Third Party Votes"
	
	
// Prep Data for Map Making
	tostring StateFIPS, gen(STATEFPa)
	tostring CountyFIPS, gen(COUNTYFPa)
	gen STATEFP = string(real(STATEFPa),"%02.0f")
	gen COUNTYFP = string(real(COUNTYFPa),"%03.0f")


// Creaet CSV and DTA for Map
	outsheet using "$temp_path/cty_maps.csv", comma replace
	save "$temp_path/cty_maps.dta", replace

//Convert the shape file for the lower 48
	clear
	
// Create usable data from NHGIS shapefile
	shp2dta using "$raw_data_path/map_shapefiles/US_county_2011", database("$raw_data_path/map_shapefiles/us_county_data") coordinates("$raw_data_path/map_shapefiles/us_county_corr") genid(id) replace

// Open data created by shp2dta program
	use "$raw_data_path/map_shapefiles/us_county_data", clear

// Add Data for Mapping Back In
	*replace COUNTYFP="025" if COUNTYFP=="086" & STATEFP=="12"

	merge 1:m STATEFP COUNTYFP using "$temp_path/cty_maps.dta"

	keep if _merge==3
	drop _merge
	
	
// Create Map of Vote Change in 2016
	sum p_diff_dem if year==2012, detail 
	sum p_diff_dem if year==2016, detail 

	
// Using 8 Groups- Both Colors
	spmap p_diff_dem using "$raw_data_path/map_shapefiles/us_county_corr.dta" if year==2012, id(id) ///
	osize(thin ..)  ocolor(gs10  ..) ///
	clmethod(custom) clbreaks(-10000000 -10 -5 -2.5 0 2.5 5 10 300) clnumber(8) ///
	fcolor(	"178 24 43"	"214 96 77"	"244 165 130"	"253 219 199"	"209 229 240"	"146 197 222""67 147 195"	"33 102 172") ///
	legend(label(2 "10+ percentage point [p.p] shift from Dem") label(3 "5 to 10 p.p. shift from Dem") label(4 "2.5 to 5 p.p. shift from Dem") label(5 "0 to 2.5 p.p. shift from Dem") label(6 "0 to 2.5 p.p. shift to Dem") label(7 "2.5 to 5 p.p. shift to Dem") label(8 "5 to 10 p.p shift to Dem") label(9 "10+ p.p. shift to Dem")     size(*1.25))
	*title("Figure 1: County Level Changes in Party Vote Share from 2012 to 2016")
	graph export "$figure_results_path/figure_1a_changes_in_vote_share_2008_to_2012_map.pdf", replace


	spmap p_diff_dem using "$raw_data_path/map_shapefiles/us_county_corr.dta" if year==2016, id(id) ///
	osize(thin ..)  ocolor(gs10  ..) ///
	clmethod(custom) clbreaks(-10000000 -10 -5 -2.5 0 2.5 5 10 300) clnumber(8) ///
	fcolor(	"178 24 43"	"214 96 77"	"244 165 130"	"253 219 199"	"209 229 240"	"146 197 222""67 147 195"	"33 102 172") ///
	legend(label(2 "10+ percentage point [p.p] shift from Dem") label(3 "5 to 10 p.p. shift from Dem") label(4 "2.5 to 5 p.p. shift from Dem") label(5 "0 to 2.5 p.p. shift from Dem") label(6 "0 to 2.5 p.p. shift to Dem") label(7 "2.5 to 5 p.p. shift to Dem") label(8 "5 to 10 p.p shift to Dem") label(9 "10+ p.p. shift to Dem")     size(*1.25))
	*title("Figure 1: County Level Changes in Party Vote Share from 2012 to 2016")
	graph export "$figure_results_path/figure_1b_changes_in_vote_share_2012_to_2016_map.pdf", replace


log close

