/* PROGRAM SETUP */
capture log close
clear 	all
version 14.0
set linesize 200
set matsize 11000
matrix drop _all
set more off
local pgm pop_1990
local datades US Population Data (SEER)
local dt `: di  %tdCY-N-D  daily("$S_DATE", "DMY")' 
local task Create US Population Dataset
local who AparnaSoni
local tag " `pgm'.do `who' `dt'"
cls

log using "$log_path/`pgm'", replace text
di "The file is: `tag'"
di "Task: `task' "
di "Project: `project' "

// Unzip data
!unzip "$raw_data_path/RawPopulationData.zip" -d "$raw_data_path"

// Set last year
global lastyear 2017

/* READ IN DATA */
clear
infix	///				
    str  year		1-4  ///
    str  statename	5-6 ///
    str  state		7-8    ///
    str  county		9-11   ///
    str  registry 	12-13   ///
    str  race		14-14   ///
    str  hispanic	15-15    ///
    str  sex		16-16   ///
    str  agegroup	17-18     ///
    str  population	19-30   ///
using "$raw_data_path/RawPopulationData/us.1990_$lastyear.19ages.adjusted.txt"

label var year "Year"
label var statename "State Abbreviation"
label var state "State FIPS Code"
label var county "County FIPS Code"
label var registry "SEER Registry"
label var race "Race"
label var hispanic "Hispanic"
label var sex "Sex"
label var agegroup "Age Group"

destring year state county population, replace
saveold "$raw_data_path/RawPopulationData/temp0", replace

/* CREATE TOTAL POPULATION FILE */
collapse (sum) population, by(state statename county year)
tab year,m  //Should be about 3,000 per year
misstable sum  //Nothing is missing
saveold "$raw_data_path/RawPopulationData/temp1", replace

/* CREATE BY AGE POPULATION FILE */
use "$raw_data_path/RawPopulationData/temp0", clear
collapse (sum) population, by(state statename county year agegroup)
destring agegroup, replace
reshape wide population, i(year statename state county) j(agegroup)
rename (population0 population1 population2 population3 population4 population5 population6 population7 ///
	population8 population9 population10 population11 population12 population13 population14 ///
	population15 population16 population17 population18) ///
	(pop_0 pop_1_4 pop_5_9 pop_10_14 pop_15_19 pop_20_24 pop_25_29 pop_30_34 ///
	pop_35_39 pop_40_44 pop_45_49 pop_50_54 pop_55_59 pop_60_64 pop_65_69 pop_70_74 ///
	pop_75_79 pop_80_84 pop_85)
	label var pop_0 "Age 0 Population"
	label var pop_1_4 "Age 1-4 Population"
	label var pop_5_9 "Age 5-9 Population"
	label var pop_10_14 "Age 10-14 Population"
	label var pop_15_19 "Age 15-19 Population"
	label var pop_20_24 "Age 20-24 Population"
	label var pop_25_29 "Age 25-29 Population"
	label var pop_30_34 "Age 30-34 Population"
	label var pop_35_39 "Age 35-39 Population"
	label var pop_40_44 "Age 40-44 Population"
	label var pop_45_49 "Age 45-49 Population"
	label var pop_50_54 "Age 50-54 Population"
	label var pop_55_59 "Age 55-59 Population"
	label var pop_60_64 "Age 60-64 Population"
	label var pop_65_69 "Age 65-69 Population"
	label var pop_70_74 "Age 70-74 Population"
	label var pop_75_79 "Age 75-79 Population"
	label var pop_80_84 "Age 80-84 Population"
	label var pop_85 "Age 85+ Population"
misstable sum
//If missing for a specific age group, that means county did not have people of that age group 
foreach y of varlist pop_* {
	recode `y' .=0
	}
misstable sum
saveold "$raw_data_path/RawPopulationData/temp2", replace

/* CREATE BY SEX POPULATION FILE */
use "$raw_data_path/RawPopulationData/temp0", clear
collapse (sum) population, by(state statename county year sex)
destring sex, replace
reshape wide population, i(year statename state county) j(sex)
rename (population1 population2) (pop_male pop_female)
	label var pop_male "Male Population"
	label var pop_female "Female Population"
misstable sum //Nothing is missing
saveold "$raw_data_path/RawPopulationData/temp3", replace

/* CREATE BY RACE POPULATION FILE */
use "$raw_data_path/RawPopulationData/temp0", clear
collapse (sum) population, by(state statename county year race)
destring race, replace
reshape wide population, i(year statename state county) j(race)
rename (population1 population2 population3 population4) (pop_white pop_black pop_native pop_asian)
	label var pop_white "White Population"
	label var pop_black "Black Population"
	label var pop_native "American Indian/Alaska Native Population"
	label var pop_asian "Asian or Pacific Islander Population"
misstable sum
//If data for a particular race is missing, that means county did not have any people of that race
foreach y of varlist pop_* {
	recode `y' .=0
	}
misstable sum
saveold "$raw_data_path/RawPopulationData/temp4", replace

/* CREATE BY HISPANIC POPULATION FILE */
use "$raw_data_path/RawPopulationData/temp0", clear
collapse (sum) population, by(state statename county year hispanic)
destring hispanic, replace
reshape wide population, i(year statename state county) j(hispanic)
rename (population0 population1) (pop_nonhisp pop_hisp)
	label var pop_nonhisp "Non-Hispanic Population"
	label var pop_hisp "Hispanic Population"
misstable sum
//If data for a particular ethnicity is missing, that means county did not have any people of that ethnicity
foreach y of varlist pop_* {
	recode `y' .=0
	}
misstable sum
saveold "$raw_data_path/RawPopulationData/temp5", replace
	
/* MERGE ALL DATASETS TOGETHER */
//Already have temp5 open
merge 1:1 year state county using "$raw_data_path/RawPopulationData/temp4"
	drop _merge  //Perfect merge
merge 1:1 year state county using "$raw_data_path/RawPopulationData/temp3"
	drop _merge  //Perfect merge
merge 1:1 year state county using "$raw_data_path/RawPopulationData/temp2"
	drop _merge  //Perfect merge
merge 1:1 year state county using "$raw_data_path/RawPopulationData/temp1"
	drop _merge  //Perfect merge
	
/* RUN SOME TESTS */
rename population pop_total 
	label var pop_total "Total population"
gen temp0=pop_total-(pop_hisp+pop_nonhisp)
	sum temp0 //Should be 0
gen temp1=pop_total-(pop_white+pop_black+pop_native+pop_asian)
	sum temp1 //Should be zero
gen temp2=pop_total-(pop_male+pop_female)
	sum temp2 //Should be zero
egen temp3=rowtotal(pop_0 pop_1_4 pop_5_9 pop_10_14 pop_15_19 pop_20_24 pop_25_29 pop_30_34 ///
	pop_35_39 pop_40_44 pop_45_49 pop_50_54 pop_55_59 pop_60_64 pop_65_69 pop_70_74 ///
	pop_75_79 pop_80_84 pop_85)
	replace temp3=pop_total-temp3
	sum temp3 //Should be zero

//Generate additional variables 
gen perc_white=100*(pop_white/pop_total)
	label var perc_white "Percent of County White [0-100]"
gen perc_black=100*(pop_black/pop_total)
	label var perc_black "Percent of County Black [0-100]"
gen perc_native=100*(pop_native/pop_total)
	label var perc_native "Percent of County American Indian/Alaska Native [0-100]"
gen perc_asian=100*(pop_asian/pop_total)
	label var perc_asian "Percent of County Asian/Pacific Islander [0-100]"
gen perc_nonwhite=100*((pop_black+pop_native+pop_asian)/pop_total)
	label var perc_nonwhite "Percent of County Non-White [0-100]"
	sum perc_nonwhite,d
gen perc_above65=100*((pop_65_69+pop_70_74+pop_75_79+pop_80_84+pop_85)/pop_total)
	label var perc_above65 "Percent of County Above 65 [0-100]"
	sum perc_above65,d
gen perc_female=100*(pop_female/pop_total)
	label var perc_female "Percent of County Female [0-100]"
	sum perc_female,d
gen perc_nonhisp=100*(pop_nonhisp/pop_total)
	label var perc_nonhisp "Percent of County Non-Hispanic [0-100]"
gen perc_hisp=100*(pop_hisp/pop_total)
	label var perc_hisp "Percent of County Hispanic [0-100]"

	
//Run additional tests
gen temp4=perc_white+perc_nonwhite
gen temp5=perc_black+perc_native+perc_asian+perc_white
gen temp6=perc_hisp+perc_nonhisp
sum temp4 temp5 temp6  //Shoud all be 100

//Clean and save dataset	
drop temp*
compress
save "$data_path/cty_pop_19ages_1990_$lastyear.dta", replace


!rm -r "$raw_data_path/RawPopulationData"
!rm -r "$raw_data_path/__MACOSX"



log close
exit
