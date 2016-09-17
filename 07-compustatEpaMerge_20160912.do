// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 07-compustatEpaMerge_20160912, name(master) replace text
cd ..
cd ..
// program:		07-compustatEpaMerge_20160912.do
// task:		Upload Compustat data and Merge with EPA Data
//				Create single facility year file
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
// Upload Compustat data received from harland prechel on 5/18/2016 and save. 
// Prior to this, I had to open it in Stata14 and resave it to be compatible in version 13
cd Original
use CompustatGHGData20160518_13
cd ..
cd Working
save compustat1
clear
//
//
// Upload Comupstat data received from harland prechel on 6/16/2016 and save.
// Prior to this, I had to open in in Stata14 and resave it to be compativle in version13
cd ..
cd Original
use Compustat20160616_13
cd ..
cd Working
save compustat2
clear
//
//
// Append Compustat datasets, create unique id, drop duplicates that are in CAD currency or has less info
use compustat1
append using compustat2, force
tostring fyear, replace
gen uid = tic + fyear
sort uid
quietly by uid: gen dup = cond(_N==1,0,_n)
drop if dup > 0 & curcd =="CAD"
drop if dup > 0 & aco ==.
drop dup
save compustatData
clear
cd ..
//
// Save EPA data in working file with updated Parent Company Ticker Codes
cd Posted
import excel 06trackDown_COMPLETE_20160912.xls, firstrow
cd ..
cd Working
gen uid = parTicker + year
keep uid misParNotes otherParTic
save updatedTickers
clear
cd ..
cd Posted
use 05epa&egridWparCoTicker_20160912
cd ..
cd Working
tostring year, replace
gen uid = parTicker + year
merge m:1 uid using updatedTickers
replace parNotes = misParNotes if misParNotes == "notPublicaly Traded" | misParNotes == "notFound"
gen updatedParTicker = .
tostring updatedParTicker, replace
replace updatedParTicker = parTicker if _merge == 1
replace updatedParTicker = parTicker if otherParTic =="na"
replace updatedParTicker =otherParTic if _merge == 3 & otherParTic != "na"
drop otherParTic _merge parTicker uid
rename updatedParTicker parTicker
gen uid = parTicker + year
label variable parTicker "Primary parent company ticker code. If 'none' the parent company is not publicly traded."
note parTicker: "See 07-compustatEpaMerge_20160912.do for more information about how this variable was created"
label variable misParNotes "If applicable, this is the reason why the Compustat parent company year information was missing from the first Compustat extract."
note misParNotes: "See 07-compustatEpaMerge_20160912.do for more information about how this variable was created"
save epaData
clear
cd ..
//
// Merge Compustat data to EPA data
cd Working
use compustatData
merge 1:m uid using epaData
drop if _merge ==1
rename _merge epaCompustatMerge
label variable epaCompustatMerge "Result of EPA-Compustat Merge"
note epaCompustatMerge: "See 07-compustatEpaMerge_20160912.do for more information about how this variable was created"
drop uid
label data "Complete Compustat & EPA Data (GHG RPT & eGRID)[Facilty - Year] file"
note: "See 07-compustatEpaMerge_20160912.do for more information about how this dataset was created"
save 07epa&compustat_20160912
cd ..
cd Posted
save 07epa&compustat_20160912
clear