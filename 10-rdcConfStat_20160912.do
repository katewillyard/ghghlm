// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 10-rdcConfStat_20160912, name(master) replace text
cd ..
cd ..
// program:		10-rdcConfStat_20160912.do
// task:		Obtain summary statistics regarding sample and matching of public data
// version: 	First Draft
// project:		GHGHLM 
// author:		Kate Willyard 9/13/2016
//
// set settings and working directory
clear all
version 13
set more off
cd "C:/Users/TXCRDC/Documents/Research/ghghlm"
//
// Find number of cases from 2010-2013
cd Posted
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep year frsID
duplicates drop
desc
clear
// Find number of cases within NAICS 2211 from 2010-2013
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep frsID year
duplicates drop
desc
clear
//
// Find number of unique facilities within NAICS 2211
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep frsID
duplicates drop
desc
clear
//
// Find number that did not report a parent company
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
tab noParCoIdent
clear
//
// Find the number that were duplicate facility-years
use 05ghgrpDuplicateData_20160912
keep if year == 2010 | year == 2011 | year == 2012 | year == 2013
keep if substr(facNAICS,1,4)=="2211"
desc
//
// Find number of unique parent company cases (not just publicly traded)
clear
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
desc
//
// Find number of unique parent companies
drop year
duplicates drop
desc
clear
//
// Find number of parent companies that were publicly traded
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "match" | parNotes == "notUltimate"
desc
clear
// Find number of parent companies that were publicly traded and correctly reported the ultimate
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "match" 
desc
clear
// Find number of parent companies that were publicly traded and did not correctly report the ultimate
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "notUltimate"
desc
clear
// Find number of parent companies that were not publicly traded
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "notPubliclyTraded"
desc
clear
// Find number of parent companies that were not publicly traded
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "notPubliclyTraded"
desc
clear
//
// Find number of parent companies that were not found in Lexis Nexis
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "notPubliclyTraded"
desc
clear
// Find number of parent companies that were not publicly traded
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress year parNotes parTicker
duplicates drop
keep if parNotes == "notFound"
desc
clear
//
// Find number of foreign, publicly traded parent companies
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
gen forCo = .
replace forCo = 1 if ein == "" & epaCompustatMerge == 3
keep if forCo == 1
duplicates drop
desc
clear
//
// Find percent match on ghgrp facility id between ghgrp and power plant crosswalk
use 07epa&compustat_20160912
keep if year == "2010" | year == "2011" | year == "2012" | year == "2013"
keep if substr(facNAICS,1,4)=="2211"
tab noPPcrosswalk
clear
//
// Find percent match between 2010 GHGRP and eGRID
use 07epa&compustat_20160912
keep if year == "2010"
keep if substr(facNAICS,1,4)=="2211"
tab noEgrid
clear
//
// Find percent match between 2012 GHGRP and eGRID
use 07epa&compustat_20160912
keep if year == "2012"
keep if substr(facNAICS,1,4)=="2211"
tab noEgrid
clear