// Program setup
capture log close
clear all
set linesize 255
set more off
matrix drop _all
local project ElectionACA
local pgm analysis1_panel_full
local dt $date
local task Analysis for 2008-16 county X year panel data
local who AlexHollingsworth
local tag " `pgm'.do `who' `dt'"

cls
log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "


/* OPEN DATASET */
use "$data_path/election_panel_2008_2016", clear
tab year,m 
	

/* TABLE 1 AND 2. MEANS */
eststo clear
estpost tabstat voteshare_dem voteshare_gop voteshare_oth turnout pctic_0400 $controls [weight=pop_total] if year>=2008, by(year) nototal statistics(mean) columns(statistics)
	esttab using "$table_results_path/analysis_panel_full.rtf", replace ///
	main(mean)  nostar unstack nonote compress label noobs ///
	title("Means for All Counties, By Year") nonumber 
	
eststo clear
estpost tabstat voteshare_dem voteshare_gop voteshare_oth turnout pctic_0400 $controls if expansion==1&year>=2008 [weight=pop_total], by(year) nototal statistics(mean) columns(statistics)
	esttab using "$table_results_path//analysis_panel_full.rtf", append ///
	main(mean)  nostar unstack  compress label noobs ///
	title("Means for Expansion Counties, By Year") nonumber 
	
eststo clear
estpost tabstat voteshare_dem voteshare_gop voteshare_oth turnout pctic_0400 $controls if expansion==0&year>=2008 [weight=pop_total], by(year) nototal statistics(mean) columns(statistics)
	esttab using "$table_results_path//analysis_panel_full.rtf", append /// 
	main(mean)  nostar unstack compress label noobs ///
	title("Means for Non-Expansion Counties, By Year") nonumber 
	
//See if 2008-12 differences are significantly different
foreach y of varlist voteshare_dem voteshare_gop voteshare_oth turnout pctic_0400 $controls {
	eststo clear
	eststo: qui reg `y' ib2008.year if year!=2016&year!=2004  [weight=pop_total]
	eststo: qui reg `y' ib2008.year if year!=2016&year!=2004&expansion==1  [weight=pop_total]
	eststo: qui reg `y' ib2008.year if year!=2016&year!=2004&expansion==0  [weight=pop_total]
	esttab using "$table_results_path/analysis_panel_full.rtf", append keep(2012.year) ///
	mlabel("All Counties" "Expansion Counties" "Non-Expansion Counties") ///
	noobs nonote onecell label compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
	title("Add to Table 1 & 2. 2008-12 differences significantly different for `y'?") 
 	}

//See if 2012-16 differences are significantly different
foreach y of varlist voteshare_dem voteshare_gop voteshare_oth turnout pctic_0400 $controls {
	eststo clear
	eststo: qui reg `y' ib2012.year if year!=2008&year!=2004  [weight=pop_total]
	eststo: qui reg `y' ib2012.year if year!=2008&year!=2004&expansion==1  [weight=pop_total]
	eststo: qui reg `y' ib2012.year if year!=2008&year!=2004&expansion==0  [weight=pop_total]
	esttab using "$table_results_path//analysis_panel_full.rtf", append keep(2016.year) ///
	mlabel("All Counties" "Expansion Counties" "Non-Expansion Counties") ///
	noobs nonote onecell label compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
	title("Add to Table 1 & 2. 2012-16 differences significantly different for `y'?") 
 	}
	
	
/* TABLE 3. REGRESSION RESULTS FOR ALL COUNTIES POOLED */
eststo clear
eststo: reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_gop pctic_0400 $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_oth pctic_0400 $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe turnout pctic_0400 $controls [aweight=pop_total] if year>=2008, absorb(year combined_fips) vce(cluster state) 
esttab using "$table_results_path/analysis_panel_full.rtf", append ///
	keep(pctic_0400 $controls) ///
	mlabel("Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout") ///
	onecell label compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
	title("Table 3. Regression Results Showing Association Between County Insurance Rate and Voting Patterns") 

/* TABLE 4. REGRESSION RESULTS FOR EXPANSION VS. NON-EXPANSION COUNTIES */
eststo clear
eststo: reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if expansion==1&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_gop pctic_0400 $controls [aweight=pop_total] if expansion==1&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_oth pctic_0400 $controls [aweight=pop_total] if expansion==1&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe turnout pctic_0400 $controls [aweight=pop_total] if expansion==1&year>=2008, absorb(year combined_fips) vce(cluster state) 

eststo: reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if expansion==0&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_gop pctic_0400 $controls [aweight=pop_total] if expansion==0&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_oth pctic_0400 $controls [aweight=pop_total] if expansion==0&year>=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe turnout pctic_0400 $controls [aweight=pop_total] if expansion==0&year>=2008, absorb(year combined_fips) vce(cluster state) 

//Chow Test to see if "insurance rate" coefficient is different for expansion and non-expansion states
qui reghdfe voteshare_dem i.expansion#c.pctic_0400 $chow_controls [aweight=pop_total] if year>=2008, absorb(i.expansion#i.year i.expansion#i.combined_fips) vce(cluster state)
	test _b[1.expansion#c.pctic_0400] = _b[0.expansion#c.pctic_0400] 
	test _b[1.expansion#c.unemp_rate_cty] = _b[0.expansion#c.unemp_rate_cty] 
	test _b[1.expansion#c.percent_in_poverty] = _b[0.expansion#c.percent_in_poverty] 
	test _b[1.expansion#c.perc_black] = _b[0.expansion#c.perc_black] 
	test _b[1.expansion#c.perc_native] = _b[0.expansion#c.perc_native] 
	test _b[1.expansion#c.perc_asian] = _b[0.expansion#c.perc_asian] 
	test _b[1.expansion#c.perc_hisp] = _b[0.expansion#c.perc_hisp] 
	test _b[1.expansion#c.median_income] = _b[0.expansion#c.median_income] 
	test _b[1.expansion#c.dem_campaign_spending_gap] = _b[0.expansion#c.dem_campaign_spending_gap] 
	test _b[1.expansion#c.total_campaign_spending] = _b[0.expansion#c.total_campaign_spending] 
	test _b[1.expansion#c.pop_den_100k] = _b[0.expansion#c.pop_den_100k]   
qui reghdfe voteshare_gop i.expansion#c.pctic_0400 $chow_controls [aweight=pop_total] if year>=2008, absorb(i.expansion#i.year i.expansion#i.combined_fips) vce(cluster state)
	test _b[1.expansion#c.pctic_0400] = _b[0.expansion#c.pctic_0400] 
	test _b[1.expansion#c.unemp_rate_cty] = _b[0.expansion#c.unemp_rate_cty] 
	test _b[1.expansion#c.percent_in_poverty] = _b[0.expansion#c.percent_in_poverty] 
	test _b[1.expansion#c.perc_black] = _b[0.expansion#c.perc_black] 
	test _b[1.expansion#c.perc_native] = _b[0.expansion#c.perc_native] 
	test _b[1.expansion#c.perc_asian] = _b[0.expansion#c.perc_asian] 
	test _b[1.expansion#c.perc_hisp] = _b[0.expansion#c.perc_hisp] 
	test _b[1.expansion#c.median_income] = _b[0.expansion#c.median_income] 
	test _b[1.expansion#c.dem_campaign_spending_gap] = _b[0.expansion#c.dem_campaign_spending_gap] 
	test _b[1.expansion#c.total_campaign_spending] = _b[0.expansion#c.total_campaign_spending] 
	test _b[1.expansion#c.pop_den_100k] = _b[0.expansion#c.pop_den_100k]   
qui reghdfe voteshare_oth i.expansion#c.pctic_0400 $chow_controls [aweight=pop_total] if year>=2008, absorb(i.expansion#i.year i.expansion#i.combined_fips) vce(cluster state)
	test _b[1.expansion#c.pctic_0400] = _b[0.expansion#c.pctic_0400] 
	test _b[1.expansion#c.unemp_rate_cty] = _b[0.expansion#c.unemp_rate_cty] 
	test _b[1.expansion#c.percent_in_poverty] = _b[0.expansion#c.percent_in_poverty] 
	test _b[1.expansion#c.perc_black] = _b[0.expansion#c.perc_black] 
	test _b[1.expansion#c.perc_native] = _b[0.expansion#c.perc_native] 
	test _b[1.expansion#c.perc_asian] = _b[0.expansion#c.perc_asian] 
	test _b[1.expansion#c.perc_hisp] = _b[0.expansion#c.perc_hisp] 
	test _b[1.expansion#c.median_income] = _b[0.expansion#c.median_income] 
	test _b[1.expansion#c.dem_campaign_spending_gap] = _b[0.expansion#c.dem_campaign_spending_gap] 
	test _b[1.expansion#c.total_campaign_spending] = _b[0.expansion#c.total_campaign_spending] 
	test _b[1.expansion#c.pop_den_100k] = _b[0.expansion#c.pop_den_100k]   
qui reghdfe turnout i.expansion#c.pctic_0400 $chow_controls [aweight=pop_total] if year>=2008, absorb(i.expansion#i.year i.expansion#i.combined_fips) vce(cluster state)
	test _b[1.expansion#c.pctic_0400] = _b[0.expansion#c.pctic_0400] 
	test _b[1.expansion#c.unemp_rate_cty] = _b[0.expansion#c.unemp_rate_cty] 
	test _b[1.expansion#c.percent_in_poverty] = _b[0.expansion#c.percent_in_poverty] 
	test _b[1.expansion#c.perc_black] = _b[0.expansion#c.perc_black] 
	test _b[1.expansion#c.perc_native] = _b[0.expansion#c.perc_native] 
	test _b[1.expansion#c.perc_asian] = _b[0.expansion#c.perc_asian] 
	test _b[1.expansion#c.perc_hisp] = _b[0.expansion#c.perc_hisp] 
	test _b[1.expansion#c.median_income] = _b[0.expansion#c.median_income] 
	test _b[1.expansion#c.dem_campaign_spending_gap] = _b[0.expansion#c.dem_campaign_spending_gap] 
	test _b[1.expansion#c.total_campaign_spending] = _b[0.expansion#c.total_campaign_spending] 
	test _b[1.expansion#c.pop_den_100k] = _b[0.expansion#c.pop_den_100k]   

esttab using "$table_results_path/analysis_panel_full.rtf", append ///
	keep(pctic_0400 $controls) ///
	mlabel("Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout" "Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout") ///
	mgroups("Expansion Counties" "Non-Expansion Counties",pattern(1 0 0 0 1 0 0 0)) ///
	onecell label compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
	title("Table 4. Regression Results for Medicaid Expansion vs. Non-Expansion Counties") 
	
	
/* TABLE 6. SENSITIVITY ANALYSES DROPPING SOME YEARS */
eststo clear
eststo: reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if year!=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_gop pctic_0400 $controls [aweight=pop_total] if year!=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_oth pctic_0400 $controls [aweight=pop_total] if year!=2008, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe turnout pctic_0400 $controls [aweight=pop_total] if year!=2008, absorb(year combined_fips) vce(cluster state) 

eststo: reghdfe voteshare_dem pctic_0400 $controls [aweight=pop_total] if year!=2012, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_gop pctic_0400 $controls [aweight=pop_total] if year!=2012, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe voteshare_oth pctic_0400 $controls [aweight=pop_total] if year!=2012, absorb(year combined_fips) vce(cluster state) 
eststo: reghdfe turnout pctic_0400 $controls [aweight=pop_total] if year!=2012, absorb(year combined_fips) vce(cluster state) 
			
esttab using "$table_results_path/analysis_panel_full.rtf", append ///
	keep(pctic_0400 $controls) ///
	mlabel("Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout" "Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout") ///
	mgroups("Omit Year 2008" "Omit Year 2012",pattern(1 0 0 0 1 0 0 0)) ///
	onecell label compress nonumbers b(2) se(2) ar2(3) star(* 0.10 ** 0.05 *** 0.01) ///
	title("Table 6. Sensitivity Analyses Dropping One Year At a Time From Analysis") 
	

	
/* TABLE S1. EFFECT OF MARKETPLACE PREMIUMS ON CHANGE IN VOTE SHARE */
sum voteshare_dem_change_16_12 voteshare_gop_change_16_12 voteshare_oth_change_16_12 turnout_change_16_12 prem_pctchange_14_17 pctic_change_0400_14_13 unemp_rate_cty_change_16_12
	//Should all be in units [0,100]
eststo clear
foreach y in voteshare_dem_change_16_12 voteshare_gop_change_16_12 voteshare_oth_change_16_12 turnout_change_16_12 {
	eststo: reghdfe `y' prem_pctchange_14_16_ffm pctic_change_0400_14_13 unemp_rate_cty_change_16_12 $controls [aweight=pop_total] if year==2016, absorb(year state) vce(robust)
	}
esttab using "$table_results_path/analysis_panel_full.rtf", append ///
	keep(prem_pctchange_14_16_ffm pctic_change_0400_14_13 unemp_rate_cty_change_16_12 $controls)  ///
	onecell label compress nonumbers b(3) se(3) ar(3) star(* 0.10 ** 0.05 *** 0.01) ///
	mlabel("Democrat Vote Share" "GOP Vote Share" "Other Party Vote Share" "Voter Turnout" ) ///
	title("Table S1. Effect of Change in Marketplace Premiums on CHANGE in vote share")


/* FIGURE S1 AND S2 */
// Explore Non-Linearity and compare this to Medicaid expansion implications
	reghdfe voteshare_dem c.pctic_0400##c.pctic_0400 $controls [aweight=pop_total], absorb(year combined_fips) vce(cluster state)

	g x = 0 in 1
	forvalues x = 1(1)100 {
		replace x = `x' in `x'
	}
		g y_quad = _b[pctic_0400]*x + _b[c.pctic_0400#c.pctic_0400]*x*x
		
	reghdfe voteshare_dem  pctic_0400 $controls [aweight=pop_total], absorb(year combined_fips) vce(cluster state)
		
		g y_lin = _b[pctic_0400]*x 
	
	gen y_quad_label = ""
	replace y_quad_label = "Quadratic Model" if x ==100
	gen y_lin_label = ""
	replace y_lin_label = "Linear Model" if x ==100
	
	twoway ///
	(connected y_quad x, lpattern("_") color(sea) msymbol(none) mlabel(y_quad_label) mlabcolor(sea))  ///
	(connected y_lin x,  color(vermillion) msymbol(none) mlabel(y_lin_label) mlabcolor(vermillion)) , ///
		ylabel(,nogrid noticks) ///
		xlabel(,nogrid noticks) ///
		ytitle("") ///
		graphregion(margin(r+22)) ///
		legend(off) ///
		xtitle("Percent Change in Insurance Rate (Among those 0-400% of FPL), [0-100]", size(3)) ///
		subtitle("Estimated Effect on Change in Democratic Vote Share, [0-100]", pos(11) size(3))

save "$temp_path/temp_data.dta", replace

// Figure out who gained the most and compare them to who gained the least
sort combined_fips year
bysort combined_fips: gen gain_in_ins = pctic_0400-pctic_0400[_n-1]

xtile gain_in_ins_5 = gain_in_ins if year==2016, n(3)
tab gain_in_ins_5, gen(gain_in_ins_q_)
bysort combined_fips: egen high_insurance = mean(gain_in_ins_q_3)
bysort combined_fips: egen low_insurance = mean(gain_in_ins_q_1)
gen high_low = . 
replace high_low = 0 if low_insurance==1
replace high_low = 1 if high_insurance==1

reghdfe voteshare_dem pctic_0400 c.pctic_0400#ib0.high_insurance   $controls [aweight=pop_total], absorb(year combined_fips) vce(cluster state)		

collapse (mean) voteshare_dem  if year>2005 [aweight=pop_total], by(year high_insurance low_insurance high_low)
gen diff  = voteshare_dem-voteshare_dem[_n-1]
gen diff2  = voteshare_dem-voteshare_dem[_n-2]

twoway ///
	connected diff year if high_low==1, ///
	yline(0) ///
	xla(2008 "2008" 2012 "2012" 2016 "2016", nogrid notick) ///
	yla(, nogrid notick) ///
	xtitle("Election Year") ///
	ytitle("Percentage point difference") ///
	title("Difference in democratic vote share between counties that gained the most" "insurance from 2012 to 2016 and those who gained the least") 
	
	graph export  "$figure_results_path/dem_diff_by_county_insurance_gain_in_2016.pdf", replace
	
twoway ///
	connected diff2 year if high_insurance==1, ///
	yline(0) ///
	xla(2008 "2008" 2012 "2012" 2016 "2016", nogrid notick) ///
	yla(, nogrid notick) ///
	xtitle("Election Year") ///
	ytitle("Percentage point difference") ///
	title("Difference in democratic vote share between counties that gained the most" "insurance from 2012 to 2016 and all other counties") 
	
	graph export  "$figure_results_path/dem_diff_by_county_insurance_gain_in_2016_all.pdf", replace

log close
	
