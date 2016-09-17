// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 05-epaParentCoMerge_20160912, name(master) replace text
cd ..
cd ..
// program:		05-epaParentCoMerge_20160912.do
// task:		Upload Yearly EPA data and Merge with Parent Co Ticker Data
//  			Append Yearly EPA Data
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
// Make Parent Co Crosswalk
cd Posted
import excel 04epaParentCoName&Ticker_COMPLETE_20160520, first
cd ..
cd Working
keep parName parTicker parNotes
duplicates drop
save epaFrsParName-crosswalk
cd ..
clear
//
// Merge 2010 Parent Co Data
cd Posted
use 03ghg&eGrid2010_20160912
cd ..
cd Working
merge m:1 parName using epaFrsParName-crosswalk
gen noParTicCrosswalk = 0
replace noParTicCrosswalk = 1 if _merge == 1
keep if _merge==3 | _merge ==1
drop _merge
keep frsID parName parAddress parCity parState parZip parPerOwn parTicker parNotes
duplicates drop
generate negParPerOwn = -parPerOwn
sort negParPerOwn
sort frsID, stable
drop negParPerOwn
quietly by frsID: gen dup = cond(_N==1,0,_n)
reshape wide parName parAddress parCity parState parZip parPerOwn parTicker parNotes, i(frsID) j(dup)
save epa2010parCo
cd ..
clear
cd Posted
use 03ghg&eGrid2010_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup != 0
drop dup
save epa2010wTicker
merge 1:1 frsID using epa2010parCo
gen epa2010parCoMerge = 0
replace epa2010parCoMerge = 1 if _merge ==3
keep if _merge==3 | _merge == 1
drop _merge
save epa2010completeMerge
cd ..
clear
// save duplicate 2010 data
cd Posted
use 03ghg&eGrid2010_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup == 0
drop dup
save ghgrp2010dupData
cd ..
clear
//
//
//
// Merge 2011 Parent Co Data
cd Posted
use 03ghg&eGrid2011Crosswalk_20160912
cd ..
cd Working
merge m:1 parName using epaFrsParName-crosswalk
gen noParTicCrosswalk = 0
replace noParTicCrosswalk = 1 if _merge == 1
keep if _merge==3 | _merge ==1
drop _merge
keep frsID parName parAddress parCity parState parZip parPerOwn parTicker parNotes
duplicates drop
generate negParPerOwn = -parPerOwn
sort negParPerOwn
sort frsID, stable
drop negParPerOwn
quietly by frsID: gen dup = cond(_N==1,0,_n)
reshape wide parName parAddress parCity parState parZip parPerOwn parTicker parNotes, i(frsID) j(dup)
save epa2011parCo
cd ..
clear
cd Posted
use 03ghg&eGrid2011Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup != 0
drop dup
save epa2011wTicker
merge 1:1 frsID using epa2011parCo
gen epa2011parCoMerge = 0
replace epa2011parCoMerge = 1 if _merge ==3
keep if _merge==3 | _merge == 1
drop _merge
save epa2011completeMerge
cd ..
clear
// save duplicate 2011 data
cd Posted
use 03ghg&eGrid2011Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup == 0
drop dup
save ghgrp2011dupData
cd ..
clear
//
//
//
// Merge 2012 Parent Co Data
cd Posted
use 03ghg&eGrid2012_20160912
cd ..
cd Working
merge m:1 parName using epaFrsParName-crosswalk
gen noParTicCrosswalk = 0
replace noParTicCrosswalk = 1 if _merge == 1
keep if _merge==3 | _merge ==1
drop _merge
keep frsID parName parAddress parCity parState parZip parPerOwn parTicker parNotes
duplicates drop
generate negParPerOwn = -parPerOwn
sort negParPerOwn
sort frsID, stable
drop negParPerOwn
quietly by frsID: gen dup = cond(_N==1,0,_n)
reshape wide parName parAddress parCity parState parZip parPerOwn parTicker parNotes, i(frsID) j(dup)
save epa2012parCo
cd ..
clear
cd Posted
use 03ghg&eGrid2012_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup != 0
drop dup
save epa2012wTicker
merge 1:1 frsID using epa2010parCo
gen epa2012parCoMerge = 0
replace epa2012parCoMerge = 1 if _merge ==3
keep if _merge==3 | _merge == 1
drop _merge
save epa2012completeMerge
cd ..
clear
// save duplicate 2012 data
cd Posted
use 03ghg&eGrid2012_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup == 0
drop dup
save ghgrp2012dupData
cd ..
clear
//
//
//
//
// Merge 2013 Parent Co Data
cd Posted
use 03ghg&eGrid2013Crosswalk_20160912
cd ..
cd Working
merge m:1 parName using epaFrsParName-crosswalk
gen noParTicCrosswalk = 0
replace noParTicCrosswalk = 1 if _merge == 1
keep if _merge==3 | _merge ==1
drop _merge
keep frsID parName parAddress parCity parState parZip parPerOwn parTicker parNotes
duplicates drop
generate negParPerOwn = -parPerOwn
sort negParPerOwn
sort frsID, stable
drop negParPerOwn
quietly by frsID: gen dup = cond(_N==1,0,_n)
reshape wide parName parAddress parCity parState parZip parPerOwn parTicker parNotes, i(frsID) j(dup)
save epa2013parCo
cd ..
clear
cd Posted
use 03ghg&eGrid2013Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup != 0
drop dup
save epa2013wTicker
merge 1:1 frsID using epa2013parCo
gen epa2013parCoMerge = 0
replace epa2013parCoMerge = 1 if _merge ==3
keep if _merge==3 | _merge == 1
drop _merge
save epa2013completeMerge
cd ..
clear
// save duplicate 2013 data
cd Posted
use 03ghg&eGrid2013Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup == 0
drop dup
save ghgrp2013dupData
cd ..
clear
//
//
//
//
// Merge 2014 Parent Co Data
cd Posted
use 03ghg&eGrid2014Crosswalk_20160912
cd ..
cd Working
merge m:1 parName using epaFrsParName-crosswalk
gen noParTicCrosswalk = 0
replace noParTicCrosswalk = 1 if _merge == 1
keep if _merge==3 | _merge ==1
drop _merge
keep frsID parName parAddress parCity parState parZip parPerOwn parTicker parNotes
duplicates drop
generate negParPerOwn = -parPerOwn
sort negParPerOwn
sort frsID, stable
drop negParPerOwn
quietly by frsID: gen dup = cond(_N==1,0,_n)
reshape wide parName parAddress parCity parState parZip parPerOwn parTicker parNotes, i(frsID) j(dup)
save epa2014parCo
cd ..
clear
cd Posted
use 03ghg&eGrid2014Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup != 0
drop dup
save epa2014wTicker
merge 1:1 frsID using epa2014parCo
gen epa2014parCoMerge = 0
replace epa2014parCoMerge = 1 if _merge ==3
keep if _merge==3 | _merge == 1
drop _merge
save epa2014completeMerge
cd ..
clear
// save duplicate 2014 data
cd Posted
use 03ghg&eGrid2014Crosswalk_20160912
cd ..
cd Working
drop parName parAddress parCity parState parZip parPerOwn 
duplicates drop
sort frsID
quietly by frsID: gen dup = cond(_N==1,0,_n)
drop if dup == 0
drop dup
save ghgrp2014dupData
cd ..
clear
//
//
//
//
// Append Yearly EPA Data
cd Working
label data "Complete EPA Data (GHG RPT & eGRID) with Parent Company Ticker Info. [Facilty - Year] file"
note: "See 05-epaParentCoMerge_20160520.do for more information about how this dataset was created"
append using epa2010completeMerge epa2011completeMerge epa2012completeMerge epa2013completeMerge epa2014completeMerge, force
gen parName = parName0 + parName1
label variable parName "Primary parent company name"
note parName: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parAddress = parAddress0 + parAddress1
label variable parAddress "Primary parent company address"
note parAddress: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parCity = parCity0 + parCity1
label variable parCity "Primary parent company city"
note parCity: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parState = parState0 + parState1
label variable parState "Primary parent company state"
note parState: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parZip = parZip0 + parZip1
label variable parZip "Primary parent company zip code"
note parZip: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parPerOwn = .
replace parPerOwn = parPerOwn0 if parPerOwn0 != .
replace parPerOwn = parPerOwn1 if parPerOwn1 != .
label variable parPerOwn "Primary parent company percent ownership"
note parPerOwn: "EPA GHG Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
gen parNotes = parNotes0 + parNotes1
label variable parNotes "Primary parent company notes"
note parNotes: "EPA GHG Parent Company Data Obtained at Lexis Nexis Corporate Affiliatins Database by Kate Willyard. See 04-findParents_20160407.do for more details"
gen parTicker = parTicker0 + parTicker1
label variable parTicker "Primary parent company ticker code"
note parTicker: "EPA GHG Parent Company Data Obtained at Lexis Nexis Corporate Affiliatins Database by Kate Willyard. See 04-findParents_20160407.do for more details"
drop parName0 parName1 parAddress0 parAddress1 parCity0 parCity1 parState0 parState1 parZip0 parZip1 parPerOwn0 parPerOwn1 parNotes0 parNotes1 parTicker0 parTicker1
save 05epa&egridWparCoTicker_20160912
cd ..
cd Posted
save 05epa&egridWparCoTicker_20160912
clear
cd ..
//
//
//
//
// Append Duplicate EPA Data
cd Working
append using ghgrp2010dupData ghgrp2011dupData ghgrp2012dupData ghgrp2013dupData ghgrp2014dupData, force
save 05ghgrpDuplicateData_20160912
cd ..
cd Posted
save 05ghgrpDuplicateData_20160912
clear