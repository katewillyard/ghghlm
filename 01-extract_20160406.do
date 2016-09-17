// program:		01-extractEPA_20160406.do
// task:		Upload Original EPA Data
//				Extract Original Data as .dta files
// version: 	First Draft
// project:		GHGHLM 
// author:		Kate Willyard 4/4/2016
//
// set settings and working directory
cd "C:/Users/TXCRDC/Dropbox/Academic/Active/Research/GHGHLM/Working"
capture log close master
log using ghghlm-master, name(master) replace text
clear all
version 13
set more off
cd "C:/Users/TXCRDC/Dropbox/Academic/Active/Research/GHGHLM"
//
// upload and save 2010 epa facilities data
cd Original
import excel ghg2010facilities, first
cd ..
cd Working
save 01ghg2010facilities_20160406
cd ..
cd Posted
save 01ghg2010facilities_20160406
clear all
cd ..
//
// upload and save 2010 epa parent company data
cd Original
import excel ghg2010parents, first
cd ..
cd Working
save 01ghg2010parents_20160406
cd ..
cd Posted
save 01ghg2010parents_20160406
clear all
cd ..
//
// upload and save 2011 epa facilities data
cd Original
import excel ghg2011facilities, first
cd ..
cd Working
save 01ghg2011facilities_20160406
cd ..
cd Posted
save 01ghg2011facilities_20160406
clear all
cd ..
//
// upload and save 2011 epa parent company data
cd Original
import excel ghg2011parents, first
cd ..
cd Working
save 01ghg2011parents_20160406
cd ..
cd Posted
save 01ghg2011parents_20160406
clear all
cd ..
//
// upload and save 2012 epa facilities data
cd Original
import excel ghg2012facilities, first
cd ..
cd Working
save 01ghg2012facilities_20160406
cd ..
cd Posted
save 01ghg2012facilities_20160406
clear all
cd ..
//
// upload and save 2012 epa parent company data
cd Original
import excel ghg2012parents, first
cd ..
cd Working
save 01ghg2012parents_20160406
cd ..
cd Posted
save 01ghg2012parents_20160406
clear all
cd ..
//
// upload and save 2013 epa facilities data
cd Original
import excel ghg2013facilities, first
cd ..
cd Working
save 01ghg2013facilities_20160406
cd ..
cd Posted
save 01ghg2013facilities_20160406
clear all
cd ..
//
// upload and save 2013 epa parent company data
cd Original
import excel ghg2013parents, first
cd ..
cd Working
save 01ghg2013parents_20160406
cd ..
cd Posted
save 01ghg2013parents_20160406
clear all
cd ..
//
// upload and save 2014 epa facilities data
cd Original
import excel ghg2014facilities, first
cd ..
cd Working
save 01ghg2014facilities_20160406
cd ..
cd Posted
save 01ghg2014facilities_20160406
clear all
cd ..
//
// upload and save 2014 epa parent company data
cd Original
import excel ghg2014parents, first
cd ..
cd Working
save 01ghg2014parents_20160406
cd ..
cd Posted
save 01ghg2014parents_20160406
clear all
cd ..
//
// upload and save 2010 eGRID data
cd Original
import excel eGrid2010, first
cd ..
cd Working
save 01eGrid2010_20160406
cd ..
cd Posted
save 01eGrid2010_20160406
clear all
cd ..
//
// upload and save 2012 eGRID data
cd Original
import excel eGrid2012, first
cd ..
cd Working
save 01eGrid2012_20160406
cd ..
cd Posted
save 01eGrid2012_20160406
clear all
cd ..
//
// upload and save oris-ghgrp_crosswalk data
cd Original
import excel eGridGhgRpt_crosswalk, first
cd ..
cd Working
save 01eGridGhgRpt_crosswalk_20160406
cd ..
cd Posted
save 01eGridGhgRpt_crosswalk_20160406
clear all
