# Replication package for "Gains in health insurance coverage explain variation in Democratic vote share in the 2008-2016 presidential elections"

This repository contains code and data to replicate the results of:

Hollingsworth, A., Soni, A., Carroll, A., Cawley, J., & Simon, K. (2019). Gains in health insurance coverage explain variation in Democratic vote share in the 2008-2016 presidential elections. PLOS ONE. Forthcoming. 

You can cite this replication package using the zenodo, where an archival version of this repository is stored. 
 [![DOI](https://zenodo.org/badge/175915806.svg)](https://zenodo.org/badge/latestdoi/175915806)

<figure style="float:center;">
<img src="https://github.com/hollina/elections_and_insurance/blob/master/Figures/figure_2_change_in_ins_v_change_in_dem_vote_share.png"  width="800"  /> 
</figure>


**Abstract**: In the last decade, health care reform has dominated U.S. public policy and political discourse. Double-digit rate increases in premiums in the Health Insurance Marketplaces established by the Affordable Care Act (ACA) in 2018 make this an ongoing issue that could affect future elections. A seminal event that changed the course of policy and politics around health care reform is the 2016 presidential election. The results of the 2016 presidential election departed considerably from polling forecasts. Given the prominence of the Affordable Care Act in the election, we test whether changes in health insurance coverage at the county-level correlate with changes in party vote share in the presidential elections from 2008 through 2016. We find that a one-percentage-point increase in county health insurance coverage was associated with a 0.25-percentage-point increase in the vote share for the Democratic presidential candidate. We further find that these gains on the part of the Democratic candidate came almost fully at the expense of the Republican (as opposed to third-party) presidential candidates. We also estimate models separately for states that did and did not expand Medicaid and find no differential effect of insurance gains on Democratic vote share for states that expanded Medicaid compared to those that did not. Our results are consistent with the hypothesis that outcomes in health insurance markets played a role in the outcome of the 2016 presidential election. The decisions made by the current administration, and how those decisions affect health insurance coverage and costs, may be important factors in future elections as well.


## Data Sources:

**Election data** for 2008, 2012, and 2016 come from the guardian newspaper and townhall.com. We obtained the data from <https://github.com/tonmcg/US_County_Level_Election_Results_08-16>. 
From here we downloaded:
US_County_Level_Presidential_Results_08-16.csv and US_County_Level_Presidential_Results_12-16.csv
Election data for 2004 were used in a robustness check. These were provided by the National Map project by the USGS. Available here, <https://www.baruch.cuny.edu/confluence/display/geoportal/US+Presidential+Election+County+Results>.


**Insurance rates** were obtained using Small Area Health Insurance Estimates. Provided here, <https://www.census.gov/data/datasets/time-series/demo/sahie/estimates-acs.html>.

**Poverty and median income** estimates come from the Small Area Income and Poverty Estimates. Provided here, <https://www.census.gov/programs-surveys/saipe/data/datasets.html>.

**Unemployment data** come from the Bureau of Labor Statistics. Provided via <https://www.bls.gov/lau/#tables>.

**Population and demographic data** come from the National Cancer Institute’s Surveillance, Epidemiology, and End Results (SEER) Program. <https://seer.cancer.gov/popdata/>

The **rating area crosswalk to zip code** was provided by Kosali Simon (simonkos@indiana.edu). 

A **zip code to county crosswalk** was provided by the Department of Housing and Urban Development’s (HUD) Office of Policy Development and Research (PD&R), 
<https://www.huduser.gov/portal/datasets/usps_crosswalk.html>. Note: There are many cross-walk options on this website. We selected the 4th quarter 2016 zip to county file. Filename: ZIP_COUNTY_122016.xlsx

Data on **campaign spending** come from the Federal Election Commission. Provided by <http://classic.fec.gov/disclosurep/pnational.do>. 

Data on **county land area** come from the 2000 U.S. census.  This along with **county-level shape files** are made available by the National Historical Geographic Information Systems (NHGIS). <https://www.nhgis.org>.

## Software Used:
All analysis were done on unix machines using Stata SE 14.2. We use a number of user-written packages that should be outlined in the master.do file. We also use a number of shell commands from within stata (whenever the ! command is present). Most of these should still work on a non-unix system, but may need to be modified.

## License:
Replication Package: MIT
Paper: CC BY
