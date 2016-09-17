// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 08-newVariable-ParCoFac_20160912, name(master) replace text
cd ..
cd ..
// program:		08-newVariable-ParCoFac_20160912.do
// task:		Upload Merged Compustat-EPA Data
//				Create new variable for the number of facilities for a parent company each year
// version: 	First Draft
// project:		GHGHLM 
// author:		Kate Willyard 9/12/2016
//
// set settings and working directory
clear all
version 13
set more off
cd "C:/Users/TXCRDC/Documents/Research/ghghlm"
//
// Upload Merged Compustat-EPA Data
cd Posted
use 07epa&compustat_20160912
cd ..
//
// Make list of number of facilities in our NAICS that reported to the GHGRPT for each parent company
cd Working
gen uid = parTicker + year
save dataWOnewVar
keep if epaCompustatMerge == 3
sort uid
by uid: generate parGHGfac_inNAICS = _N
label variable parGHGfac_inNAICS "Number of facilities in our NAICS that reported their GHG Emissions during the year of study"
note parGHGfac_inNAICS: "See 08-newVariable-ParCoFac_20160912.do for more information about how this variable was created"
keep uid parGHGfac_inNAICS
duplicates drop
save newParYearVariable
clear
//
// Merge new variable into dataset
use dataWOnewVar
merge m:1 uid using newParYearVariable
drop _merge uid
//
// Fix variable names
rename PetroleumandNaturalGasSystem pngOffShore
note pngOffShore: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename AT pngProcessing
note pngProcessing: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename AU pngTransCompres
note pngTransCompres: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename AV pngUndStorage
note pngUndStorage: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename AW pngLNGstorage
note pngLNGstorage: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename AX pngLNGimpExph
note pngLNGimpExph: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
drop BO
//
// Save data
label data "Complete Compustat & EPA Data (GHG RPT & eGRID)[Facilty - Year] file, with new variable for the number of facilities in our NAICS that reported to the GHGRPT for each parent company"
note: "See 08-newVariable-ParCoFac_20160912.do for more information about how this dataset was created"
save 08epa&compustat-wParCoFacVar_20160912
cd ..
cd Posted
save 08epa&compustat-wParCoFacVar_20160912
clear
//