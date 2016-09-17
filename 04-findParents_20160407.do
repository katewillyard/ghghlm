// program:		04-findParents_20160416.do
// task:		Upload EPA Merged Yearly Data
//				Make list of unique parent companies
//              Export list as a .csv
// version: 	Second Draft
// project:		GHGHLM 
// author:		Kate Willyard 4/7/2016
//
// set settings and working directory
capture log close master
log using ghghlm-master, name(master) replace text
clear all
version 13
set more off
cd "C:/Users/TXCRDC/Dropbox/Academic/Active/Research/GHGHLM"
//
// append all epa data & create unique parent company list
cd Posted
label data "Unique Parent Co Names"
note: "See 03-epaMerge_20160407.do for more information about how this dataset was created"
append using 03ghg&eGrid2010_20160407 03ghg2011_20160407 03ghg&eGrid2012_20160407 03ghg2013_20160407 03ghg2014_20160407, force
keep if substr(facNAICS,1,4)=="2211"
keep parName parCity parState parZip parAddress
sort parName
duplicates drop
cd ..
cd Working
save 04epaParentCo_20160407
export excel using 04epaParentCo_20160407, first(var)  
cd ..
cd Posted
save 04epaParentCo_20160407
export excel using 04epaParentCo_20160407, first(var) 
cd ..
clear
//
//
//
// Upon completing this step, I went online, I looked up the parent company, at
// LexisNexis Corporate Affiliations data base in Evans Library:
// http://php.library.tamu.edu/searcher/?&search[terms]=lexisNexis+Corporate+Affiliations&wholeword=1
// If the parent company listed was not the ultimate parent company, I found the 
// the ultimate parent company. Using the database, I found the ticker information of the 
// ultimate parent companies within the excel document of unique parent company names.
// I created a variable in the .xls document, "parTicker," and put the ticker information there.
// If I could not find the parent company, or if the parent company was publically traded, I wrote "none"
// I also created another variable, "parNotes," and I put in information about this data collection process.
// If the parent company reported to the EPA matched that  found, I wrote "match"
// If the parent company reported to the EPA did not match that found, I wrote "notUltimate"
// If the parent company reported to the EPA was not found, I wrote "notFound"
// If the parent companyreported to the EPA was found, but it was not publicaly traded, I wrote "notPubliclyTraded"
// I saved the document as "04epaParentCoName&Ticker_COMPLETE_20160411"
