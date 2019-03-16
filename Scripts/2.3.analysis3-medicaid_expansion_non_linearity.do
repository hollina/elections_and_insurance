// Program setup
capture log close
clear all
set linesize 255
set more off
matrix drop _all
local project ElectionACA
local pgm analysis3-medicaid_expansion_non_linearity
local dt $date
local task Analysis for 2008-16 county X year panel data 
local who AlexHolllingsworth
local tag " `pgm'.do `who' `dt'"

cls
log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

/* OPEN DATASET */
use "$data_path/election_panel_2008_2016", clear

// Main Analysis 
	reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state) 
		est sto m1
// Medicaid Expansion 
	reghdfe voteshare_dem c.pctic_0400 expansion post postexp $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state)
		est sto m2

// Binary for top quintile 
	xtile pctic_0400_5 = pctic_0400, n(5)
	sumup pctic_0400_5 if year==2016, by(expansion)
		//the average medicaid expansion quintile is in the 4th or 5th
	gen high_insurance = 0
	replace high_insurance=1 if pctic_0400_5==5
	label variable high_insurance "Indicator for Highest Ins. Quintile"
	reghdfe voteshare_dem c.pctic_0400 high_insurance  $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state)
		eststo m3
		
	reghdfe voteshare_dem c.pctic_0400 high_insurance  $controls [aweight=pop_total] if expansion==0&year>=2008, absorb(year combined_fips) vce(cluster state)
		eststo m4

	esttab m1 m2 m3 m4 using  "$table_results_path/medicaid_v_high_ins.rtf", label replace drop(expansion post) ///
		onecell compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
		title("Table 5: Medicaid Expansion Effect is Same As the High Insurance Effect Implying Diminishing Returns") ///
		mlabel("Baseline Model" "Allow for Medicaid Exp" "High Ins. Indicator" "High Ins. Indicator AND Drop Medicaid Exp States" )

		twoway (histogram pctic_0400 if expansion==1 & year==2012, color(sea)) ///
			   (histogram pctic_0400 if expansion==0 & year==2012, fcolor(none) color(vermillion)), ///
			 legend(order(1 "Expansion" 2 "Non-Expansion" ) pos(6) cols(2))	///
			 xlabel(40(10)100 ,nogrid notick) ///
			 ylabel(0(.05).15 ,nogrid notick) ///
			 title("Histogram of County % Insured in 2012 by Expansion Status") ///
			 ytitle("") ///
			 subtitle("Density", pos(11) size(3))
			 
			graph export  "$figure_results_path/histogram_percent_insured_2012_by_expansion_status.pdf", replace
		
		twoway (histogram pctic_0400 if expansion==1 & year==2016, color(sea)) ///
			   (histogram pctic_0400 if expansion==0 & year==2016, fcolor(none) color(vermillion)), ///
			 legend(order(1 "Expansion" 2 "Non-Expansion" ) pos(6) cols(2))	///
			 ylabel(0(.05).15 ,nogrid notick) ///
			 xlabel(40(10)100 ,nogrid notick) ///
			 title("Histogram of County % Insured in 2016 by Expansion Status") ///
			 ytitle("") ///
			 subtitle("Density", pos(11) size(3))
			 
			graph export  "$figure_results_path/histogram_percent_insured_2016_by_expansion_status.pdf", replace
			
		keep if year==2012 | year==2016
		sort combined_fips year
		bysort combined_fips: gen diff = pctic_0400[_n]-pctic_0400[_n-1]
		
		twoway (histogram diff if expansion==1 & year==2016, color(sea)) ///
			   (histogram diff if expansion==0 & year==2016, fcolor(none) color(vermillion)), ///
			 legend(order(1 "Expansion" 2 "Non-Expansion" ) pos(6) cols(2))	///
			 ylabel(0(.05).2 ,nogrid notick) ///
			 xlabel( ,nogrid notick) ///
			 title("Histogram of Difference in County % Insured from 2012 to 2016 by Expansion Status") ///
			 ytitle("") ///
			 xtitle("") ///
			 subtitle("Density", pos(11) size(3))
			 
			graph export  "$figure_results_path/histogram_diff_percent_insured_2012_2016_by_expansion_status.pdf", replace
		 
log close
		

	
