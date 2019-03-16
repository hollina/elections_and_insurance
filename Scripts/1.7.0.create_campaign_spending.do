////////////////////////////////////////////////////////////////////////
// Turn the HUD xwalk into useable stata format

/*
A zip code to county cross-walk was provided by the Department of Housing and Urban Development’s (HUD) Office of Policy Development and Research (PD&R), 
https://www.huduser.gov/portal/datasets/usps_crosswalk.html. Note: There are many cross-walk options on this website. We selected the 4th quarter 2016 zip to county file. Filename: ZIP_COUNTY_122016.xlsx.
*/

// Clear memory
clear all

// Import excel sheet
import excel "$raw_data_path/ZIP_COUNTY_122016.xlsx", sheet("Sheet1") firstrow

// Rename and reformat variables
destring COUNTY, replace
destring ZIP, replace
rename ZIP zip
rename COUNTY countycode

// Save in stata format
compress
save "$raw_data_path/cross_walk.dta", replace

////////////////////////////////////////////////////////////////////////
// Unzip FEC data
!unzip "$raw_data_path/RawFECData.zip" -d "$raw_data_path"

////////////////////////////////////////////////////////////////////////
// Import 2008 FEC data
import delimited "$raw_data_path/RawFECData/P00000001D-ALL_08.csv", encoding(ISO-8859-1)clear

// Add year
gen year = 2008

// generate zip code
gen zip = substr(recipient_zip,1,5)
destring zip, replace force
drop if missing(zip)

// Collapse by candidate, year, zip
collapse (sum) disb_amt, by(zip cand_nm year)

// Add Crosswalk to county
joinby zip using "$raw_data_path/cross_walk.dta"

sort cand_nm zip countycode TOT_RATIO

gen weighted_disb_amt_xwalk = TOT_RATIO*disb_amt

// Create weighted sum of spending
collapse (sum) weighted_disb_amt_xwalk, by(countycode cand_nm year)
sort countycode year cand_nm

// Ensure candidates are comparable to election data, so in GOP, DEM, OTH format
tab cand_nm
gen dem = 0
gen gop = 0
gen oth = 0

replace dem = 1 if cand_nm=="Biden, Joseph R Jr"
replace gop = 1 if cand_nm=="Brownback, Samuel Dale"  
replace dem = 1 if cand_nm=="Clinton, Hillary Rodham"  
replace gop = 1 if cand_nm=="Cox, John H"  
replace dem = 1 if cand_nm=="Dodd, Christopher J"  
replace dem = 1 if cand_nm=="Edwards, John"  
replace gop = 1 if cand_nm=="Gilmore, James S III" 
replace gop = 1 if cand_nm=="Giuliani, Rudolph W"  
replace oth = 1 if cand_nm=="Gravel, Mike"  
replace gop = 1 if cand_nm=="Huckabee, Mike"  
replace gop = 1 if cand_nm=="Hunter, Duncan" 
replace dem = 1 if cand_nm=="Kucinich, Dennis J"  
replace gop = 1 if cand_nm=="McCain, John S"  
replace dem = 1 if cand_nm=="Obama, Barack" 
replace gop = 1 if cand_nm=="Paul, Ron" 
replace dem = 1 if cand_nm=="Richardson, Bill"  
replace gop = 1 if cand_nm=="Romney, Mitt"  
replace gop = 1 if cand_nm=="Tancredo, Thomas Gerald"  
replace gop = 1 if cand_nm=="Thompson, Fred Dalton"  
replace gop = 1 if cand_nm=="Thompson, Tommy G"  

bysort countycode: egen dem_total = total(weighted_disb_amt_xwalk) if dem==1
bysort countycode: egen gop_total = total(weighted_disb_amt_xwalk) if gop==1
bysort countycode: egen oth_total = total(weighted_disb_amt_xwalk) if oth==1

// Keep the total
bysort countycode: egen dem_t = max(dem_total)
bysort countycode: egen gop_t = max(gop_total) 
bysort countycode: egen oth_t = max(oth_total) 

bysort countycode: gen order = _n
keep if order ==1
keep countycode year *_t

replace dem_t = 0 if missing(dem_t)
replace gop_t = 0 if missing(gop_t)

// Save 08 Spending
compress
save "$raw_data_path/RawFECData/spending_08.dta", replace

////////////////////////////////////////////////////////////////////////
// Clean the 2012 FEC Data
import delimited "$raw_data_path/RawFECData/P00000001D-ALL_12.csv", encoding(ISO-8859-1)clear

// Add year
gen year = 2012

// Extract zip
gen zip = substr(recipient_zip,1,5)
destring zip, replace force
drop if missing(zip)

// Collapse by spending by year, zip, and candidate
collapse (sum) disb_amt, by(zip cand_nm year)

// Add crosswalk
joinby zip using "$raw_data_path/cross_walk.dta"

// Calculate weighted sum in each county
sort cand_nm zip countycode TOT_RATIO

gen weighted_disb_amt_xwalk = TOT_RATIO*disb_amt

collapse (sum) weighted_disb_amt_xwalk, by(countycode cand_nm year)
sort countycode year cand_nm

// Ensure candidates are comparable to election data, so in GOP, DEM, OTH format

tab cand_nm
gen dem = 0
gen gop = 0
gen oth = 0

replace gop = 1 if cand_nm=="Bachmann, Michele"
replace gop = 1 if cand_nm=="Cain, Herman"
replace gop = 1 if cand_nm=="Gingrich, Newt" 
replace gop = 1 if cand_nm=="Huntsman, Jon"
replace gop = 1 if cand_nm=="Johnson, Gary Earl"
replace gop = 1 if cand_nm=="McCotter, Thaddeus G" 
replace dem = 1 if cand_nm=="Obama, Barack" 
replace gop = 1 if cand_nm=="Paul, Ron" 
replace gop = 1 if cand_nm=="Pawlenty, Timothy" 
replace gop = 1 if cand_nm=="Perry, Rick" 
replace gop = 1 if cand_nm=="Roemer, Charles E. 'Buddy' III"
replace gop = 1 if cand_nm=="Romney, Mitt"
replace gop = 1 if cand_nm=="Santorum, Rick"
replace oth = 1 if cand_nm=="Stein, Jill"


bysort countycode: egen dem_total = total(weighted_disb_amt_xwalk) if dem==1
bysort countycode: egen gop_total = total(weighted_disb_amt_xwalk) if gop==1
bysort countycode: egen oth_total = total(weighted_disb_amt_xwalk) if oth==1

// Only keep the total
bysort countycode: egen dem_t = max(dem_total)
bysort countycode: egen gop_t = max(gop_total) 
bysort countycode: egen oth_t = max(oth_total) 


bysort countycode: gen order = _n
keep if order ==1
keep countycode year *_t

replace dem_t = 0 if missing(dem_t)
replace gop_t = 0 if missing(gop_t)

// Save 12 Spending
compress
save "$raw_data_path/RawFECData/spending_12.dta", replace

////////////////////////////////////////////////////////////////////////
// Clean the 2016 FEC Data
import delimited "$raw_data_path/RawFECData/P00000001D-ALL_16.csv", encoding(ISO-8859-1)clear

// Add year
gen year = 2016

// Extract zip
gen zip = substr(recipient_zip,1,5)
destring zip, replace force
drop if missing(zip)

// Collapse spending by zip, year, and candidate
collapse (sum) disb_amt, by(zip cand_nm year)

// Create weighted county spending using HUD cross-walk
joinby zip using "$raw_data_path/cross_walk.dta"

sort cand_nm zip countycode TOT_RATIO

gen weighted_disb_amt_xwalk = TOT_RATIO*disb_amt

collapse (sum) weighted_disb_amt_xwalk, by(countycode cand_nm year)
sort countycode year cand_nm

// Ensure candidates are comparable to election data, so in GOP, DEM, OTH format

tab cand_nm
gen dem = 0
gen gop = 0
gen oth = 0

replace gop = 1 if cand_nm=="Bush, Jeb"
replace gop = 1 if cand_nm=="Carson, Benjamin S."
replace gop = 1 if cand_nm=="Christie, Christopher J."
replace dem = 1 if cand_nm=="Clinton, Hillary Rodham"
replace gop = 1 if cand_nm=="Cruz, Rafael Edward 'Ted'"
replace gop = 1 if cand_nm=="Fiorina, Carly"
replace gop = 1 if cand_nm=="Gilmore, James S III"
replace gop = 1 if cand_nm=="Graham, Lindsey O."
replace gop = 1 if cand_nm=="Huckabee, Mike"
replace gop = 1 if cand_nm=="Jindal, Bobby"
replace oth = 1 if cand_nm=="Johnson, Gary"
replace gop = 1 if cand_nm=="Kasich, John R."
replace dem = 1 if cand_nm=="Lessig, Lawrence"
replace oth = 1 if cand_nm=="McMullin, Evan"
replace dem = 1 if cand_nm=="O'Malley, Martin Joseph"
replace gop = 1 if cand_nm=="Pataki, George E."
replace gop = 1 if cand_nm=="Paul, Rand"
replace gop = 1 if cand_nm=="Perry, James R. (Rick)"
replace gop = 1 if cand_nm=="Rubio, Marco"
replace dem = 1 if cand_nm=="Sanders, Bernard"
replace gop = 1 if cand_nm=="Santorum, Richard J."
replace oth = 1 if cand_nm=="Stein, Jill"
replace gop = 1 if cand_nm=="Trump, Donald J."
replace gop = 1 if cand_nm=="Walker, Scott"
replace dem = 1 if cand_nm=="Webb, James Henry Jr."


bysort countycode: egen dem_total = total(weighted_disb_amt_xwalk) if dem==1
bysort countycode: egen gop_total = total(weighted_disb_amt_xwalk) if gop==1
bysort countycode: egen oth_total = total(weighted_disb_amt_xwalk) if oth==1

// Gen total speing by party
bysort countycode: egen dem_t = max(dem_total)
bysort countycode: egen gop_t = max(gop_total) 
bysort countycode: egen oth_t = max(oth_total) 


bysort countycode: gen order = _n
keep if order ==1
keep countycode year *_t

replace dem_t = 0 if missing(dem_t)
replace gop_t = 0 if missing(gop_t)

// Save 16 Spending
compress
save "$raw_data_path/RawFECData/spending_16.dta", replace

////////////////////////////////////////////////////////////////////////
// Combine all the data

clear all

use "$raw_data_path/RawFECData/spending_08.dta"
append using "$raw_data_path/RawFECData/spending_12.dta"
append using "$raw_data_path/RawFECData/spending_16.dta"

// ensure that missing spending is coded as a zero
xtset countycode year

tsfill, full

drop oth_t
replace dem_t = 0 if missing(dem_t)
replace gop_t = 0 if missing(gop_t)
sort countycode year

keep if year ==2008 | year ==2012 | year ==2016


replace dem_t = 0 if missing(dem_t)
replace gop_t = 0 if missing(gop_t)

// Defalte spending by 100k
replace dem_t = dem_t/100000
replace gop_t = gop_t/100000

// Calculate total spending
gen total_campaign_spending = dem_t +gop_t
gen dem_share_campaign_spending = dem_t/total_campaign_spending

// rename variables
rename dem_t dem_campaign_spending
rename gop_t gop_campaign_spending

// Label variables
label var dem_campaign_spending "Dem Campaign Expenditures, \\$100k"
label var gop_campaign_spending "GOP Campaign Expenditures, \\$100k"
label var total_campaign_spending "Total Campaign Expenditures, \\$100k"
label var dem_share_campaign_spending "Dem Share of Campaign Expenditures, [0-1]"

gen dem_campaign_spending_gap = dem_campaign_spending - gop_campaign_spending
label var dem_campaign_spending_gap "Dem Campaign Expenditure Gap, \\$100k"


rename countycode combined_fips

// Save data for analysis
compress
save "$data_path/presidential_election_spending_by_party_08_12_16.dta", replace

// Clean up
erase "$raw_data_path/cross_walk.dta"
!rm -r "$raw_data_path/RawFECData"
!rm -r "$raw_data_path/__MACOSX"
