// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 06-epaParentCoMerge_20160912, name(master) replace text
cd ..
cd ..
// program:		06-epaParentCoMerge_20160912.do
// task:		Upload Compustat data, and delete information that precedes 2 Years
//				Create ProjectID file
//				Merge Project ID file to Compustat and epa data
//				Merge compustat and EPA data
//				Create TrackingDown .xls file
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
// Upload Compustat data
cd Original
use CompustatGHGData20160518_13
cd ..
cd Working
drop if fyear <= 2007
tostring fyear, replace
gen uid = tic + fyear
sort uid
quietly by uid: gen dup = cond(_N==1,0,_n)
drop if dup > 1
drop dup 
save compustatData
clear
cd ..
//
// Make Project ID file
cd Posted
use 05epa&egridWparCoTicker_20160912
cd ..
cd Working
keep year parName parTicker
drop if parTicker == "none"
duplicates drop
tostring year, replace
gen uid = parTicker + year
sort uid
quietly by uid: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
sort parTicker year
generate projectID = _n
save 06projectID_20160912
cd ..
cd Posted
save 06projectID_20160912
export excel using 06projectID_20160912, first(var)
clear
cd ..
// 
// Merge ProjectID file to Compustat
cd Working
use compustatData
merge 1:1 uid using 06projectID_20160912
rename _merge parMerge
label variable parMerge "Result of EPA Parent Company Year-Compustat Merge"
note parMerge: "See 06-parentCompanies_20160912.do for more information about how this variable was created"
save 06compustatData_20160912
cd ..
clear
//
// Merge Project ID file to EPA data
cd Posted
use 05epa&egridWparCoTicker_20160912
cd ..
cd Working
drop if parTicker == "none"
tostring year, replace
gen uid = parTicker + year
merge m:1 uid using 06projectID_20160912
drop _merge
save 06epaData_20160912
cd ..
clear
//
// Merge Compustat and EPA data
cd Working
use 06compustatData_20160912
merge 1:m uid using 06epaData_20160912
rename _merge epaCompustatMerge
label variable epaCompustatMerge "Result of EPA-Compustat Merge"
note epaCompustatMerge: "See 07-compustatEpaMerge_20160520.do for more information about how this variable was created"
drop uid
label data "EPA Data with Parent Company Year Project IDs"
note: "See 06-parentCompanies_20160912.do for more information about how this dataset was created"
save 06epa&compustat_20160912
cd ..
cd Posted
save 06epa&compustat_20160912
cd ..
clear
//
// Create TrackingDown .xls file
cd Posted
use 06epa&compustat_20160912
keep if parMerge == 1 | parMerge == 2 | epaCompustatMerge == 1 | epaCompustatMerge == 2
keep projectID parName parTicker parAddress parCity parState parZip year 
duplicates drop
drop if projectID == .
sort projectID
quietly by projectID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
save 06trackDown_20160912
export excel using 06trackDown_20160912, first(var)
//
//
//
//
//
//
//	Upon Completing this process, I took the excel file and made a row called misParNotes
//  I also made another row called otherParTic
//	I then searched the parents company information that was missing from Compustat.
//	If the information was missing because it is a foreign company, I wrote "foreign" in
//	the misParNotes collumn and "na" in the otherParTic column
//	If the information was missing because there was a merger, I wrote "merger" in the
//	misParNotes column and the correct parent company ticker symbol for the owning company
//	If the information was missing because there was a name change, I wrote "newName" in the
//	misParNotes column and the correct parent comapny ticker symbol for the owning company.
//	I then saved it as 06trackDown_COMPLETE_20160912.xls 