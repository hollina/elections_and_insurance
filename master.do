////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Replication code for: 

// Hollingsworth, A., Soni, A., Carroll, A., Cawley, J., & Simon, K. (2019). 
//	 Gains in health insurance coverage explain variation in Democratic 
//	 vote share in the 2008-2016 presidential elections. PLOS ONE. Forthcoming.

// Email: hollinal@indiana.edu

// Version: v0.9.0 

// Date: 15 March 2019

// To cite this code or data please use the Zenodo DOI.
// 	https://doi.org/10.5281/zenodo.2595616
// 	Zenodo stores archival versions of this project. 

// Code is also available at https://github.com/hollina/elections_and_insurance

// File: master.do

// Description: This file runs all code needed to replicate our paper

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

// Version of stata
version 14

// Close any open log files
capture log close

// Clear Memory
clear all

// Set Date
global date = subinstr("$S_DATE", " ", "-", .)

// Set your file paths.
global root_path "/Users/hollinal/Dropbox/elections_and_insurance"  // Root folder directory that contains the subfolders for constructing the dataset and estimation

global data_path "$root_path/DataForAnalysis" // Path for data used in analysis
global raw_data_path "$root_path/RawData" // Path for raw data
global temp_path "$root_path/temp" // Path for temp folder
global script_path "$root_path/Scripts" // Path for running the scripts to create tables and figures
global table_results_path "$root_path/Tables" // Path for tables/figures output
global figure_results_path "$root_path/Figures" // Path for tables/figures output
global log_path "$root_path/Logs" // Path for logs


// Custom Install Location for Stata Packages. Useful if working on a server where you have limited write permissions.
local custom_stata_package_location 0

if `custom_stata_package_location' {
	// Set a specific folder for storing custom stata programs, useful for server
	*Note: Be sure to create a folder named stata at destination to keep it organized
	global file_path_for_stata "$temp_path" 
	
	// Set Personal Path
	net set ado "$file_path_for_stata"

	// Add Path to a directory that stata looks at for packages
	adopath + "$file_path_for_stata"
}
else  {
	di "Using Default Locations to Install Any Packages"
}


// Install Stata Packages
local install_stata_packages 0

// Install Packages if needed, if not, make a note of this. This should be a comprehensive list of all additional packages needed to run the code.
if `install_stata_packages' {
	ssc install carryforward, replace
	ssc install estout, replace	
	ssc install reghdfe, replace
	ssc install blindschemes, replace
	ssc install coefplot, replace
	ssc install statastates, replace 
	ssc install ftools, replace
	ssc install shp2dta, replace
	ssc install spmap, replace
	ssc install sumup, replace
	
	ssc install distinct, replace
	ssc install unique, replace
	ssc install statastates, replace
	net get statastates.dta, replace
	ssc install binscatter, replace
}
else  {
	di "All packages up-to-date"
}


// Specify Screen Width for log files
set linesize 255

// Set font type
graph set window fontface "Times New Roman"

// Set Graph Scheme
set scheme plotplainblind

// Allow the screen to move without having to click more
set more off

// Drop everything in mata
matrix drop _all

////////////////////////////////////////////////////////////////////////
/* DATASET CONSTRCUTION */

// Build intermediate files
do "$script_path/1.1.0.create_election_data_2008_2016.do"
do "$script_path/1.2.0.create_sahie_data.do"
do "$script_path/1.3.0.create_saipe_data.do"
do "$script_path/1.4.0.create_unemployment_data.do"
do "$script_path/1.5.0.create_population_data.do"
do "$script_path/1.6.0.create_cty_premiums.do"
do "$script_path/1.7.0.create_campaign_spending.do"

// Combine files into a panel dataset
do "$script_path/1.8.0.create_election_panel.do"

////////////////////////////////////////////////////////////////////////
/* DATA ANALYSIS */

// Set controls used in analysis here
global controls ///
	unemp_rate_cty percent_in_poverty perc_black perc_native ///
	perc_asian perc_hisp median_income dem_campaign_spending_gap ///
	total_campaign_spending pop_den_100k
	
global chow_controls i.expansion#c.unemp_rate_cty ///
i.expansion#c.percent_in_poverty i.expansion#c.perc_black ///
i.expansion#c.perc_native i.expansion#c.perc_asian ///
i.expansion#c.perc_hisp i.expansion#c.median_income ///
i.expansion#c.dem_campaign_spending_gap i.expansion#c.total_campaign_spending ///
i.expansion#c.pop_den_100k

do "$script_path/2.1.analysis1-panel_full.do"
do "$script_path/2.2.analysis2-cty_maps.do"
do "$script_path/2.3.analysis3-medicaid_expansion_non_linearity.do"
do "$script_path/2.4.analysis4-create_figure_2.do"

////////////////////////////////////////////////////////////////////////
// Clean up files

// Erase inside of temp folder
!rm -r "$root_path/temp/"
!mkdir "$root_path/temp/"

////////////////////////////////////////////////////////////////////////
/* PROVENANCE OF TABLES AND FIGURES IN PLOS ONE PAPER */
//Tables 1 and 2 are created MANUALLY in Word using analysis1-panel_full (see section titled "TABLE 1 AND 2. MEANS")
	*The first three tables of the RTF give the first three columns for Table 1 & Table 2
	*The next set of regression results in the RTF are used to fill in columns 4 & 5 of Table 1 & Table 2

//Table 3 is created automatically in analysis1-panel_full and exported to RTF

//Table 4 is created automatically in analysis1-panel_full and exported to RTF
	*We manually added in results of the Chow test (showing if expansion vs. non-expansion counties significantly different) using the log file

//Table 5 is created automatically in analysis3-medicaid_expansion_non_linearity and exported to RTF

//Table 6 is created automatically in the analysis1-panel_full script and exported to RTF

//Figure 1 is created automatically in analysis2-cty_maps
	*Figures/figure_1a_changes_in_vote_share_2008_to_2012_map.pdf
	*Figures/figure_1b_changes_in_vote_share_2012_to_2016_map.pdf

//Figure 2 is created automatically in analysis4-create_figure_2

//Figure 3 is created automatically in analysis3-medicaid_expansion_non_linearity
	*Figures/histogram_percent_insured_2016_by_expansion_status.pdf
	*Figures/histogram_percent_insured_2012_by_expansion_status.pdf

//Supplementary Table 1 is created automatically in analysis1-panel_full and exported to RTF
	
//Supplementary Figures 1 & 2 are created  in analysis1-panel_full
	*Figures/dem_diff_by_county_insurance_gain_in_2016.pdf
	*Figures/dem_diff_by_county_insurance_gain_in_2016_all.pdf
