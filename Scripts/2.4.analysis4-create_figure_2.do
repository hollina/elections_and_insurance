// Program setup
capture log close
clear all
set linesize 255
set more off
matrix drop _all
local project ElectionACA
local pgm analysis4-create_data_for_bar_chart
local dt $date
local task Analysis for 2008-16 county X year panel data 
local who AlexHolllingsworth
local tag " `pgm'.do `who' `dt'"

cls
log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

//Open dataset
use "$data_path/election_panel_2008_2016", clear
xtset combined_fips year
sort combined_fips year


reghdfe voteshare_gop pctic_0400 postexp $controlvars  [aweight=pop_total], absorb(year combined_fips) vce(cluster state)


bysort combined_fips: gen pctic_diff = pctic_0400[_n] - pctic_0400[_n -1]

bysort combined_fips: gen change_in_vote_share = voteshare_gop[_n] - voteshare_gop[_n -1]
gen vote_share_no_ins_chg  = voteshare_gop - (pctic_diff*_b[pctic] + _b[postexp]*postexp)

gen numb_gop_no_ins_chg = (vote_share_no_ins_chg*numb_total)/100
gen numb_pctic_0400 = (pctic_0400/100)*(pop_total*100000)
gen numb_pctic_138 = ( pctic_138/100)*(pop_total*100000)
collapse (sum) numb_gop_no_ins_chg numb_gop numb_dem numb_total numb_pctic_0400 numb_pctic_138  pop_total  (mean) expansion (lastnm) statename, by(state year)


gen vote_share_dem = (numb_dem/numb_total)*100


gen vote_share_gop = (numb_gop/numb_total)*100

bysort state: gen change_share_gop = vote_share_gop[_n] - vote_share_gop[_n -1]
sort state year
bysort state: gen change_share_dem = vote_share_dem[_n] - vote_share_dem[_n -1]

gen percent_0400 = (numb_pctic_0400/(pop_total*100000))*100

bysort state: gen change_ins = percent_0400[_n] - percent_0400[_n -1]

gen statename_spc = " " + statename

reg change_share_dem change_ins [aweight = pop_total]  if year ==2016


twoway scatter change_share_dem change_ins if year ==2016 & expansion == 0 [aweight = pop_total],msymbol(circle_hollow) mcolor(black) ///
 || scatter change_share_dem change_ins if year ==2016 & expansion > 0 [aweight = pop_total],msymbol(circle_hollow)  mcolor(turquoise) ///
 || lfit change_share_dem change_ins [aweight = pop_total]  if year ==2016, lcolor(vermillion) lwidth(.5)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="CA", mlabel(statename) mlabpos(0) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="TX", mlabel(statename) mlabpos(0) msymbol(none) /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="AZ", mlabel(statename) mlabpos(12)  mlabgap(2.5) msymbol(none) mlabcolor(turquoise)  /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="GA", mlabel(statename) mlabpos(12) mlabgap(3) msymbol(none) /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="VA", mlabel(statename) mlabpos(0) msymbol(none) /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="UT", mlabel(statename) mlabpos(12) mlabgap(1.5) msymbol(none) /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="DC", mlabel(statename) mlabpos(12) msymbol(none)  mlabcolor(turquoise)  /// 
 || scatter change_share_dem change_ins if year ==2016 & statename=="MA", mlabel(statename) mlabpos(12) mlabgap(2.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="IA", mlabel(statename) mlabpos(12) mlabgap(2) msymbol(none)  mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="WV", mlabel(statename) mlabpos(12) mlabgap(2) msymbol(none)  mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="ND", mlabel(statename) mlabpos(9) mlabgap(1) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="HI", mlabel(statename) mlabpos(12) mlabgap(1.5) msymbol(none)  mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="SD", mlabel(statename) mlabpos(6) mlabgap(1) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="ME", mlabel(statename) mlabpos(9) mlabgap(1.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="VT", mlabel(statename) mlabpos(11) mlabgap(1.5) msymbol(none)  mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NE", mlabel(statename) mlabpos(11) mlabgap(1.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="KS", mlabel(statename) mlabpos(9) mlabgap(1.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="FL", mlabel(statename) mlabpos(11) mlabgap(3.75) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="IL", mlabel(statename) mlabpos(1) mlabgap(3) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="WA", mlabel(statename) mlabpos(3) mlabgap(2) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="AR", mlabel(statename) mlabpos(9) mlabgap(1.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="OR", mlabel(statename) mlabpos(3) mlabgap(1.5) msymbol(none) mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="CO", mlabel(statename) mlabpos(6) mlabgap(2) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NM", mlabel(statename) mlabpos(3) mlabgap(1.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NV", mlabel(statename) mlabpos(6) mlabgap(1.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="KY", mlabel(statename) mlabpos(3) mlabgap(1.5) msymbol(none) mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="MT", mlabel(statename) mlabpos(2) mlabgap(1) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="MI", mlabel(statename) mlabpos(6) mlabgap(2.5) msymbol(none) mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="OH", mlabel(statename) mlabpos(9) mlabgap(3) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="RI", mlabel(statename) mlabpos(3) mlabgap(1) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="IN", mlabel(statename) mlabpos(7) mlabgap(2.25) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="ID", mlabel(statename) mlabpos(1) mlabgap(1) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NH", mlabel(statename) mlabpos(3) mlabgap(1) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NY", mlabel(statename) mlabpos(11) mlabgap(3.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="MD", mlabel(statename) mlabpos(3) mlabgap(1.75) msymbol(none) mlabcolor(turquoise)  ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NC", mlabel(statename) mlabpos(11) mlabgap(2.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="LA", mlabel(statename) mlabpos(6) mlabgap(1.25) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="SC", mlabel(statename) mlabpos(4) mlabgap(.75) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="NJ", mlabel(statename) mlabpos(3) mlabgap(2.5) msymbol(none)  mlabcolor(turquoise) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="MO", mlabel(statename) mlabpos(6) mlabgap(1.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="WY", mlabel(statename) mlabpos(9) mlabgap(.5) msymbol(none) ///
 || scatter change_share_dem change_ins if year ==2016 & statename=="PA", mlabel(statename) mlabpos(5) mlabgap(2.5) msymbol(none)  mlabcolor(turquoise)  ///
 || , ylabel(-15(5)5, noticks nogrid labsize(4)) ///
	xlabel(, noticks nogrid) ///
	xtitle("Percentage Point Change in Insured Rate from 2012 to 2016", size(3)) ///
	ytitle("") ///
	legend(off) ///
	yscale(range(-15(5)5)) ///
	xscale(range(0(5)20)) ///
	xlabel(0(5)20, labsize(4)) ///
	subtitle("Percentage Point Change in Democratic Vote Share from 2012 to 2016", position(11) size(3)) ///
	yline(0, lcolor(reddish) lwidth(.15) )
	*title("Exhibit 1: There is Positive Association Between Changes in Insurance" "Coverage and Changes Democratic Party Vote Share", position(11) size(4.5)) ///
	*note("Note: The size of each circle is proportional to state population. The dashed line represents a best fit line weighted" ///
	*"by population.")
	
 	graph export "$figure_results_path/fig_3.pdf", replace
 	graph export "$figure_results_path/fig_3.png", replace
 	graph export "$figure_results_path/fig_3.tif", replace

log close
