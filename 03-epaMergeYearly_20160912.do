// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 03-epaMergeYearly_20160912, name(master) replace text
cd ..
cd ..
// program:		03-epaMergeYearly_20160912.do
// task:		Upload Coded EPA Data
//              Merge into yearly [Facility - Parent Co - Year]
// version: 	First Draft
// project:		GHGHLM 
// author:		Kate Willyard 9/12/2016
//
// set settings 
clear all
version 13
set more off
//
//
// merge 2010 epa ghgRpt facility and parent-co datasets
// there can be multiple identified parent companies for each facility
cd Posted
use 02ghg2010facilities-coded_20160406
keep if substr(facNAICS,1,4)=="2211"
merge 1:m facID using 02ghg2010parents-coded_20160406
keep if _merge==3 | _merge == 1
gen noParCoIdent = 0
replace noParCoIdent = 1 if _merge == 1
drop _merge
duplicates drop
cd ..
cd Working
save 03ghg2010
cd ..
clear
// merge 2010 epa ghgRpt data with Power Plant Crosswalk
cd Posted
use 02eGridGhgRpt_crosswalk-coded_20160406
rename fID facID
sort facID
quietly by facID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
cd ..
cd Working
merge 1:m facID using 03ghg2010
keep if _merge ==3 | _merge ==2
gen noPPcrosswalk = 0
replace noPPcross = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2010Crosswalk
clear
cd ..
// merge 2010 epaRpt data with 2010 eGrid data
cd Posted
use 02eGrid2010-coded_20160406
cd ..
cd Working
duplicates drop
merge 1:m orisCode using 03ghg&eGrid2010Crosswalk, force
keep if _merge ==3 | _merge ==2
gen noEgrid = 0
replace noEgrid = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2010_20160912
cd ..
cd Posted 
save 03ghg&eGrid2010_20160912
clear
cd ..
//
//
//
//
// merge 2011 epa ghgRpt facility and parent-co datasets
// there can be multiple identified parent companies for each facility
cd Posted
use 02ghg2011facilities-coded_20160406
keep if substr(facNAICS,1,4)=="2211"
duplicates drop
merge 1:m facID using 02ghg2011parents-coded_20160406
gen noParCoIdent = 0
replace noParCoIdent = 1 if _merge == 1
drop _merge
duplicates drop
cd ..
cd Working
save 03ghg2011
// merge 2011 epa ghgRpt data with Power Plant Crosswalk
cd ..
cd Posted
use 02eGridGhgRpt_crosswalk-coded_20160406
rename fID facID
sort facID
quietly by facID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
cd ..
cd Working
merge 1:m facID using 03ghg2011
keep if _merge ==3 | _merge ==2
gen noPPcrosswalk = 0
replace noPPcross = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2011Crosswalk_20160912
cd ..
cd Posted
save 03ghg&eGrid2011Crosswalk_20160912
clear
cd ..
//
//
// merge 2012 epa ghgRpt facility and parent-co datasets
// there can be multiple identified parent companies for each facility
cd Posted
use 02ghg2012facilities-coded_20160406
keep if substr(facNAICS,1,4)=="2211"
merge 1:m facID using 02ghg2012parents-coded_20160406
keep if _merge==3 | _merge == 1
gen noParCoIdent = 0
replace noParCoIdent = 1 if _merge == 1
drop _merge
duplicates drop
cd ..
cd Working
save 03ghg2012
cd ..
clear
// merge 2012 epa ghgRpt data with Power Plant Crosswalk
cd Posted
use 02eGridGhgRpt_crosswalk-coded_20160406
rename fID facID
sort facID
quietly by facID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
cd ..
cd Working
merge 1:m facID using 03ghg2012
keep if _merge ==3 | _merge ==2
gen noPPcrosswalk = 0
replace noPPcross = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2012Crosswalk
clear
cd ..
// merge 2012 epaRpt data with 2012 eGrid data
cd Posted
use 02eGrid2012-coded_20160406
cd ..
cd Working
duplicates drop
merge 1:m orisCode using 03ghg&eGrid2012Crosswalk, force
keep if _merge ==3 | _merge ==2
gen noEgrid = 0
replace noEgrid = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2012_20160912
cd ..
cd Posted 
save 03ghg&eGrid2012_20160912
clear
cd ..
//
//
//
// merge 2013 epa ghgRpt facility and parent-co datasets
// there can be multiple identified parent companies for each facility
cd Posted
use 02ghg2013facilities-coded_20160406
duplicates drop
merge 1:m facID using 02ghg2013parents-coded_20160406
keep if _merge==3
drop _merge
duplicates drop
cd ..
cd Working
save 03ghg2013
clear
cd ..
// merge 2013 epa ghgRpt data with Power Plant Crosswalk
cd Posted
use 02eGridGhgRpt_crosswalk-coded_20160406
rename fID facID
sort facID
quietly by facID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
cd ..
cd Working
merge 1:m facID using 03ghg2013
keep if _merge ==3 | _merge ==2
gen noPPcrosswalk = 0
replace noPPcross = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2013Crosswalk_20160912
cd ..
cd Posted
save 03ghg&eGrid2013Crosswalk_20160912
clear
cd ..
//
//
// merge 2014 epa ghgRpt facility and parent-co datasets
// there can be multiple identified parent companies for each facility
cd Posted
use 02ghg2014facilities-coded_20160406
duplicates drop
merge 1:m facID using 02ghg2014parents-coded_20160406
keep if _merge==3
drop _merge
duplicates drop
cd ..
cd Working
save 03ghg2014
cd ..
// merge 2014 epa ghgRpt data with Power Plant Crosswalk
cd Posted
use 02eGridGhgRpt_crosswalk-coded_20160406
rename fID facID
sort facID
quietly by facID: gen dup = cond(_N==1,0,_n)
drop if dup >1
drop dup
cd ..
cd Working
merge 1:m facID using 03ghg2014
keep if _merge ==3 | _merge ==2
gen noPPcrosswalk = 0
replace noPPcross = 1 if _merge == 2
drop _merge
duplicates drop
save 03ghg&eGrid2014Crosswalk_20160912
cd ..
cd Posted
save 03ghg&eGrid2014Crosswalk_20160912
clear
cd ..
