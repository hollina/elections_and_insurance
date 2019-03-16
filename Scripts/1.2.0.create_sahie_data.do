/* NOTES */
//Downloaded from https://www.census.gov/data/datasets/time-series/demo/sahie/estimates-acs.html

!unzip "$raw_data_path/RawSAHIEData.zip" -d "$raw_data_path"
 
/* SET GLOBALS */
global lastyear 2016

/* CLEAN INFLATION DATA */
do "$script_path/1.2.1.sahie_prepare.do"
do "$script_path/1.2.2.sahie_baseline.do"

!rm -r "$raw_data_path/RawSAHIEData"
!rm -r "$raw_data_path/__MACOSX"
