// program:		02-codeEPA_20160406.do
// task:		Upload Extracted EPA Data
//				Rename variables and labels
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
// manage 2010 epa ghg facility data
cd Posted
use 01ghg2010facilities_20160406
cd ..
cd Working
label data "EPA 2010 Greenhouse Gas Facilities Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename FacilityId facID
note facID: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSId frsID
note frsID: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FacilityName facName
note facName: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename City facCity
note facCity: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename State facState
note facState: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZipCode facZip
note facZip: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Address facAddress
note facAddress: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename County facCounty
note facCounty: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Latitude facLat
note facLat: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Longitude facLong
note facLong: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PrimaryNAICSC~e facNAICS
note facNAICS: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~ts facTypeSubparts
note facTypeSubparts: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~rs facTypeSectors
note facTypeSectors: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Totalreported~s facTotDirect
note facTotDirect: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CO2emissionsn~c facCO2
note facCO2: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MethaneCH4emi~s facCH4
note facCH4: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitrousOxideN~s facN2O
note facN2O: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SF6emissions facSF6
note facSF6: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NF3emissions facNF3
note facNF3: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFCemissions facHFC
note facHFC: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PFCemissions facPFC
note facPFC: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFEemissions facHFE
note facHFE: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename OtherGHGsmet~2e facOtherEmiss
note facOtherEmiss: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GaseswithNoLi~c facEmissNoWght
note facEmissNoWght: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename BiogenicCO2em~t facBioCO2
note facBioCO2: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename StationaryCom~n facStaComb
note facStaComb: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ElectricityGe~n facElecGen
note facElecGen: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AdipicAcidPro~n facAcidProd
note facAcidProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AluminumProdu~n facAlumProd
note facAlumProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AmmoniaManufa~g facAmmoniaProd
note facAmmoniaProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CementProduct~n facCementProd
note facCementProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FerroalloyPro~n facFerrProd
note facFerrProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GlassProduction facGlassProd
note facGlassProd: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HCFC22Produ~23D facHCFC22Prod
note facHCFC22Prod: "EPA 2010 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HydrogenProdu~n facHydroProd
note facHydroProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IronandSteelP~n facSteelProd
note facSteelProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LeadProduction facLeadProd
note facLeadProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LimeProduction facLimeProd
note facLimeProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Miscellaneous~s facMiscUse
note facMiscUse: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitricAcidPro~n facNitAcidProd
note facNitAcidProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Petrochemical~n facPetroProd
note facPetroProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PetroleumRefi~g facPetRefinProd
note facPetRefinProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PhosphoricAci~n facPhAcidProd
note facPhAcidProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PulpandPaperM~g facPaperProd
note facPaperProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SiliconCarbid~n facSilProd
note facSilProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SodaAshManufa~g facAshProd
note facAshProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename TitaniumDioxi~n facTitProd
note facTitProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZincProduction facZincProd
note facZincProd: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MunicipalLand~s facLandfill
note facLandfill: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2coll~n facCO2reuse
note facCO2reuse: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2repo~n facCO2repOther
note facCO2repOther: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Doesthefacili~u facContMont
note facContMont: "EPA 2010 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2010facilities-coded_20160406
cd ..
cd Posted
save 02ghg2010facilities-coded_20160406
clear all
cd ..
//
// manage 2010 epa ghg parent data
cd Posted 
use 01ghg2010parents_20160406
cd ..
cd Working
label data "EPA 2010 Greenhouse Gas, Parent Company Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename GHGRPFACILITYID facID
note facID: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSIDFACILITY frsID
note frsID: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename REPORTINGYEAR year
note year: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAME facName
note facName: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYADDRESS facAddress
note facAddress: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCITY facCity
note facCity: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYSTATE facState
note facState: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYZIP facZip
note facZip: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCOUNTY facCounty
note facCounty: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOMPANY~E parName
note parName: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTREE~S parAddress
note parAddress: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOCITY parCity
note parCity: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTATE parState
note parState: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOZIP parZip
note parZip: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOPERCE~P parPerOwn
note parPerOwn: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAICS~E facNAICS
note facNAICS: "EPA 2010 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2010parents-coded_20160406
cd ..
cd Posted
save 02ghg2010parents-coded_20160406
clear all
cd ..
//
// manage 2011 epa ghg facility data
cd Posted
use 01ghg2011facilities_20160406
cd ..
cd Working
label data "2011 EPA Greenhouse Gas Facilities Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename FacilityId facID
note facID: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSId frsID
note frsID: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FacilityName facName
note facName: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename City facCity
note facCity: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename State facState
note facState: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZipCode facZip
note facZip: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Address facAddress
note facAddress: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename County facCounty
note facCounty: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Latitude facLat
note facLat: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Longitude facLong
note facLong: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PrimaryNAICSC~e facNAICS
note facNAICS: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~ts facTypeSubparts
note facTypeSubparts: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~rs facTypeSectors
note facTypeSectors: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Totalreported~s facTotDirect
note facTotDirect: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CO2emissionsn~c facCO2
note facCO2: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MethaneCH4emi~s facCH4
note facCH4: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitrousOxideN~s facN2O
note facN2O: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SF6emissions facSF6
note facSF6: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NF3emissions facNF3
note facNF3: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFCemissions facHFC
note facHFC: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PFCemissions facPFC
note facPFC: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFEemissions facHFE
note facHFE: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename OtherGHGsmet~2e facOtherEmiss
note facOtherEmiss: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GaseswithNoLi~c facEmissNoWght
note facEmissNoWght: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename BiogenicCO2em~t facBioCO2
note facBioCO2: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename StationaryCom~n facStaComb
note facStaComb: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ElectricityGe~n facElecGen
note facElecGen: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AdipicAcidPro~n facAcidProd
note facAcidProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AluminumProdu~n facAlumProd
note facAlumProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AmmoniaManufa~g facAmmoniaProd
note facAmmoniaProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CementProduct~n facCementProd
note facCementProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FerroalloyPro~n facFerrProd
note facFerrProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GlassProduction facGlassProd
note facGlassProd: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HCFC22Produ~23D facHCFC22Prod
note facHCFC22Prod: "EPA 2011 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HydrogenProdu~n facHydroProd
note facHydroProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IronandSteelP~n facSteelProd
note facSteelProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LeadProduction facLeadProd
note facLeadProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LimeProduction facLimeProd
note facLimeProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Miscellaneous~s facMiscUse
note facMiscUse: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitricAcidPro~n facNitAcidProd
note facNitAcidProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Petrochemical~n facPetroProd
note facPetroProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PetroleumRefi~g facPetRefinProd
note facPetRefinProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PhosphoricAci~n facPhAcidProd
note facPhAcidProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PulpandPaperM~g facPaperProd
note facPaperProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SiliconCarbid~n facSilProd
note facSilProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SodaAshManufa~g facAshProd
note facAshProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename TitaniumDioxi~n facTitProd
note facTitProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZincProduction facZincProd
note facZincProd: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MunicipalLand~s facLandfill
note facLandfill: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2coll~n facCO2reuse
note facCO2reuse: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2repo~n facCO2repOther
note facCO2repOther: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Doesthefacili~u facContMont
note facContMont: "EPA 2011 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2011facilities-coded_20160406
cd ..
cd Posted
save 02ghg2011facilities-coded_20160406
clear all
cd ..
//
// manage 2011 epa ghg parent data
cd Posted 
use 01ghg2011parents_20160406
cd ..
cd Working
label data "EPA 2011 Greenhouse Gas, Parent Company Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename GHGRPFACILITYID facID
note facID: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSIDFACILITY frsID
note frsID: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename REPORTINGYEAR year
note year: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAME facName
note facName: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYADDRESS facAddress
note facAddress: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCITY facCity
note facCity: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYSTATE facState
note facState: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYZIP facZip
note facZip: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCOUNTY facCounty
note facCounty: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOMPANY~E parName
note parName: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTREE~S parAddress
note parAddress: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOCITY parCity
note parCity: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTATE parState
note parState: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOZIP parZip
note parZip: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOPERCE~P parPerOwn
note parPerOwn: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAICS~E facNAICS
note facNAICS: "EPA 2011 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2011parents-coded_20160406
cd ..
cd Posted
save 02ghg2011parents-coded_20160406
clear all
cd ..
//
// manage 2012 epa ghg facility data
cd Posted
use 01ghg2012facilities_20160406
cd ..
cd Working
label data "2012 EPA Greenhouse Gas Facilities Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename FacilityId facID
note facID: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSId frsID
note frsID: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FacilityName facName
note facName: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename City facCity
note facCity: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename State facState
note facState: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZipCode facZip
note facZip: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Address facAddress
note facAddress: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename County facCounty
note facCounty: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Latitude facLat
note facLat: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Longitude facLong
note facLong: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PrimaryNAICSC~e facNAICS
note facNAICS: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~ts facTypeSubparts
note facTypeSubparts: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~rs facTypeSectors
note facTypeSectors: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Totalreported~s facTotDirect
note facTotDirect: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CO2emissionsn~c facCO2
note facCO2: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MethaneCH4emi~s facCH4
note facCH4: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitrousOxideN~s facN2O
note facN2O: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SF6emissions facSF6
note facSF6: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NF3emissions facNF3
note facNF3: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFCemissions facHFC
note facHFC: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PFCemissions facPFC
note facPFC: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFEemissions facHFE
note facHFE: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename OtherGHGsmet~2e facOtherEmiss
note facOtherEmiss: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GaseswithNoLi~c facEmissNoWght
note facEmissNoWght: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename BiogenicCO2em~t facBioCO2
note facBioCO2: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename StationaryCom~n facStaComb
note facStaComb: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ElectricityGe~n facElecGen
note facElecGen: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AdipicAcidPro~n facAcidProd
note facAcidProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AluminumProdu~n facAlumProd
note facAlumProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AmmoniaManufa~g facAmmoniaProd
note facAmmoniaProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CementProduct~n facCementProd
note facCementProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FerroalloyPro~n facFerrProd
note facFerrProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GlassProduction facGlassProd
note facGlassProd: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HCFC22Produ~23D facHCFC22Prod
note facHCFC22Prod: "EPA 2012 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HydrogenProdu~n facHydroProd
note facHydroProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IronandSteelP~n facSteelProd
note facSteelProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LeadProduction facLeadProd
note facLeadProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LimeProduction facLimeProd
note facLimeProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Miscellaneous~s facMiscUse
note facMiscUse: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitricAcidPro~n facNitAcidProd
note facNitAcidProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Petrochemical~n facPetroProd
note facPetroProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PetroleumRefi~g facPetRefinProd
note facPetRefinProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PhosphoricAci~n facPhAcidProd
note facPhAcidProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PulpandPaperM~g facPaperProd
note facPaperProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SiliconCarbid~n facSilProd
note facSilProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SodaAshManufa~g facAshProd
note facAshProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename TitaniumDioxi~n facTitProd
note facTitProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZincProduction facZincProd
note facZincProd: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MunicipalLand~s facLandfill
note facLandfill: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2coll~n facCO2reuse
note facCO2reuse: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2repo~n facCO2repOther
note facCO2repOther: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Doesthefacili~u facContMont
note facContMont: "EPA 2012 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2012facilities-coded_20160406
cd ..
cd Posted
save 02ghg2012facilities-coded_20160406
clear all
cd ..
//
// manage 2012 epa ghg parent data
cd Posted 
use 01ghg2012parents_20160406
cd ..
cd Working
label data "EPA 2012 Greenhouse Gas, Parent Company Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename GHGRPFACILITYID facID
note facID: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSIDFACILITY frsID
note frsID: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename REPORTINGYEAR year
note year: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAME facName
note facName: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYADDRESS facAddress
note facAddress: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCITY facCity
note facCity: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYSTATE facState
note facState: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYZIP facZip
note facZip: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCOUNTY facCounty
note facCounty: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOMPANY~E parName
note parName: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTREE~S parAddress
note parAddress: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOCITY parCity
note parCity: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTATE parState
note parState: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOZIP parZip
note parZip: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOPERCE~P parPerOwn
note parPerOwn: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAICS~E facNAICS
note facNAICS: "EPA 2012 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2012parents-coded_20160406
cd ..
cd Posted
save 02ghg2012parents-coded_20160406
clear all
cd ..
//
// manage 2013 epa ghg facility data
cd Posted
use 01ghg2013facilities_20160406
cd ..
cd Working
label data "2013 EPA Greenhouse Gas Facilities Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename FacilityId facID
note facID: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSId frsID
note frsID: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FacilityName facName
note facName: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename City facCity
note facCity: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename State facState
note facState: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZipCode facZip
note facZip: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Address facAddress
note facAddress: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename County facCounty
note facCounty: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Latitude facLat
note facLat: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Longitude facLong
note facLong: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PrimaryNAICSC~e facNAICS
note facNAICS: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~ts facTypeSubparts
note facTypeSubparts: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~rs facTypeSectors
note facTypeSectors: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Totalreported~s facTotDirect
note facTotDirect: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CO2emissionsn~c facCO2
note facCO2: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MethaneCH4emi~s facCH4
note facCH4: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitrousOxideN~s facN2O
note facN2O: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SF6emissions facSF6
note facSF6: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NF3emissions facNF3
note facNF3: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFCemissions facHFC
note facHFC: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PFCemissions facPFC
note facPFC: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFEemissions facHFE
note facHFE: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename OtherGHGsmet~2e facOtherEmiss
note facOtherEmiss: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GaseswithNoLi~c facEmissNoWght
note facEmissNoWght: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename BiogenicCO2em~t facBioCO2
note facBioCO2: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename StationaryCom~n facStaComb
note facStaComb: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ElectricityGe~n facElecGen
note facElecGen: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AdipicAcidPro~n facAcidProd
note facAcidProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AluminumProdu~n facAlumProd
note facAlumProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AmmoniaManufa~g facAmmoniaProd
note facAmmoniaProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CementProduct~n facCementProd
note facCementProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FerroalloyPro~n facFerrProd
note facFerrProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GlassProduction facGlassProd
note facGlassProd: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HCFC22Produ~23D facHCFC22Prod
note facHCFC22Prod: "EPA 2013 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HydrogenProdu~n facHydroProd
note facHydroProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IronandSteelP~n facSteelProd
note facSteelProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LeadProduction facLeadProd
note facLeadProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LimeProduction facLimeProd
note facLimeProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Miscellaneous~s facMiscUse
note facMiscUse: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitricAcidPro~n facNitAcidProd
note facNitAcidProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Petrochemical~n facPetroProd
note facPetroProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PetroleumRefi~g facPetRefinProd
note facPetRefinProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PhosphoricAci~n facPhAcidProd
note facPhAcidProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PulpandPaperM~g facPaperProd
note facPaperProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SiliconCarbid~n facSilProd
note facSilProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SodaAshManufa~g facAshProd
note facAshProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename TitaniumDioxi~n facTitProd
note facTitProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZincProduction facZincProd
note facZincProd: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MunicipalLand~s facLandfill
note facLandfill: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2coll~n facCO2reuse
note facCO2reuse: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2repo~n facCO2repOther
note facCO2repOther: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Doesthefacili~u facContMont
note facContMont: "EPA 2013 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2013facilities-coded_20160406
cd ..
cd Posted
save 02ghg2013facilities-coded_20160406
clear all
cd ..
//
// manage 2013 epa ghg parent data
cd Posted 
use 01ghg2013parents_20160406
cd ..
cd Working
label data "EPA 2013 Greenhouse Gas, Parent Company Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename GHGRPFACILITYID facID
note facID: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSIDFACILITY frsID
note frsID: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename REPORTINGYEAR year
note year: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAME facName
note facName: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYADDRESS facAddress
note facAddress: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCITY facCity
note facCity: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYSTATE facState
note facState: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYZIP facZip
note facZip: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCOUNTY facCounty
note facCounty: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOMPANY~E parName
note parName: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTREE~S parAddress
note parAddress: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOCITY parCity
note parCity: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTATE parState
note parState: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOZIP parZip
note parZip: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOPERCE~P parPerOwn
note parPerOwn: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAICS~E facNAICS
note facNAICS: "EPA 2013 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2013parents-coded_20160406
cd ..
cd Posted
save 02ghg2013parents-coded_20160406
clear all
cd ..
//
// manage 2014 epa ghg facility data
cd Posted
use 01ghg2014facilities_20160406
cd ..
cd Working
label data "2014 EPA Greenhouse Gas Facilities Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename FacilityId facID
note facID: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSId frsID
note frsID: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FacilityName facName
note facName: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename City facCity
note facCity: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename State facState
note facState: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZipCode facZip
note facZip: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Address facAddress
note facAddress: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename County facCounty
note facCounty: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Latitude facLat
note facLat: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Longitude facLong
note facLong: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PrimaryNAICSC~e facNAICS
note facNAICS: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~ts facTypeSubparts
note facTypeSubparts: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IndustryType~rs facTypeSectors
note facTypeSectors: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Totalreported~s facTotDirect
note facTotDirect: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CO2emissionsn~c facCO2
note facCO2: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MethaneCH4emi~s facCH4
note facCH4: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitrousOxideN~s facN2O
note facN2O: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SF6emissions facSF6
note facSF6: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NF3emissions facNF3
note facNF3: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFCemissions facHFC
note facHFC: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PFCemissions facPFC
note facPFC: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HFEemissions facHFE
note facHFE: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename OtherGHGsmet~2e facOtherEmiss
note facOtherEmiss: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GaseswithNoLi~c facEmissNoWght
note facEmissNoWght: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename BiogenicCO2em~t facBioCO2
note facBioCO2: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename StationaryCom~n facStaComb
note facStaComb: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ElectricityGe~n facElecGen
note facElecGen: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AdipicAcidPro~n facAcidProd
note facAcidProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AluminumProdu~n facAlumProd
note facAlumProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename AmmoniaManufa~g facAmmoniaProd
note facAmmoniaProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename CementProduct~n facCementProd
note facCementProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FerroalloyPro~n facFerrProd
note facFerrProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename GlassProduction facGlassProd
note facGlassProd: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HCFC22Produ~23D facHCFC22Prod
note facHCFC22Prod: "EPA 2014 Greenhouse Gas Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename HydrogenProdu~n facHydroProd
note facHydroProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IronandSteelP~n facSteelProd
note facSteelProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LeadProduction facLeadProd
note facLeadProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename LimeProduction facLimeProd
note facLimeProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Miscellaneous~s facMiscUse
note facMiscUse: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename NitricAcidPro~n facNitAcidProd
note facNitAcidProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Petrochemical~n facPetroProd
note facPetroProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PetroleumRefi~g facPetRefinProd
note facPetRefinProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PhosphoricAci~n facPhAcidProd
note facPhAcidProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PulpandPaperM~g facPaperProd
note facPaperProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SiliconCarbid~n facSilProd
note facSilProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename SodaAshManufa~g facAshProd
note facAshProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename TitaniumDioxi~n facTitProd
note facTitProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename ZincProduction facZincProd
note facZincProd: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename MunicipalLand~s facLandfill
note facLandfill: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2coll~n facCO2reuse
note facCO2reuse: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename IssomeCO2repo~n facCO2repOther
note facCO2repOther: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename Doesthefacili~u facContMont
note facContMont: "EPA 2014 Greenhouse Gas, Facilities Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2014facilities-coded_20160406
cd ..
cd Posted
save 02ghg2014facilities-coded_20160406
clear all
cd ..
//
// manage 2014 epa ghg parent data
cd Posted 
use 01ghg2014parents_20160406
cd ..
cd Working
label data "EPA 2014 Greenhouse Gas, Parent Company Data"
note: "Downloaded at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets  on April 6, 2016 by Kate Willyard"
rename GHGRPFACILITYID facID
note facID: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FRSIDFACILITY frsID
note frsID: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename REPORTINGYEAR year
note year: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAME facName
note facName: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYADDRESS facAddress
note facAddress: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCITY facCity
note facCity: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYSTATE facState
note facState: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYZIP facZip
note facZip: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYCOUNTY facCounty
note facCounty: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOMPANY~E parName
note parName: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTREE~S parAddress
note parAddress: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOCITY parCity
note parCity: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOSTATE parState
note parState: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOZIP parZip
note parZip: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename PARENTCOPERCE~P parPerOwn
note parPerOwn: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
rename FACILITYNAICS~E facNAICS
note facNAICS: "EPA 2014 Greenhouse Gas, Parent Company Data Downloaded at at https://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on April 6, 2016 by Kate Willyard"
save 02ghg2014parents-coded_20160406
cd ..
cd Posted
save 02ghg2014parents-coded_20160406
clear all
cd ..
//
// manage oris-ghgrp crosswalk data
cd Posted
use 01eGridGhgRpt_crosswalk_20160406
cd ..
cd Working
label data "ORIS-GHGRP Crosswalk 2010-2014"
note: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename GHGRPFacilityID fID
label variable fID "A facility’s Greenhouse Gas Reporting Program identification number (GHGRP ID)"
note fID: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename FACILITYNAME fcName
label variable fcName "The name of the facility."
note fcName: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename GHGRPCity fcCity
label variable fcName "The name of the city, town or village where the mail is delivered."
note fcName: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename GHGRPState fcState
label variable fcState "The name of the state the facility is located in"
note fcState: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ORISCODE orisCode
label variable orisCode "The primary ORIS CODE"
note orisCode: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ORISCODE2 orisCode2
label variable orisCode2 "The secondary ORIS CODE (if applicable)"
note orisCode2: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ORISCODE3 orisCode3
note orisCode3: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
label variable orisCode3 "The third ORIS CODE (if applicable)"
rename ReportedSubp~10 repSub10
label variable repSub10 "The subparts reported in 2010"
note repSub10: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ReportedSubp~11 repSub11
label variable repSub11 "The subparts reported in 2011"
note repSub11: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ReportedSubp~12 repSub12
label variable repSub12 "The subparts reported in 2012"
note repSub12: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ReportedSubp~13 repSub13
label variable repSub13 "The subparts reported in 2013"
note repSub13: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename ReportedSubp~14 repSub14
label variable repSub14 "The subparts reported in 2014"
note repSub14: "Power Plant Crosswalk downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
save 02eGridGhgRpt_crosswalk-coded_20160406
cd ..
cd Posted
save 02eGridGhgRpt_crosswalk-coded_20160406
clear all
cd ..
//
// manage egrid 2010 data
cd Posted
use 01eGrid2010_20160406
cd ..
cd Working
label data "2010 eGrid Plant Data"
note: "All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID9thediti~e plantID
note plantID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard""
rename Plantstateabb~n plantState
note plantState: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantname plantName
note plantName: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename DOEEIAORISpla~c orisCode
note orisCode: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantEPAFacil~t facID
note facID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantoperator~e plantOperator
note plantOperator: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantoperatorID opID
note opID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Utilityservic~e terName
note terName: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Utilityservic~D terID
note terID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename IDoftheoperat~p opParentID
note opParentID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Nameoftheoper~o opParentName
note opParentName: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Powercontrola~e pcAreaName
note pcAreaName: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Powercontrola~D pcAreaID
note pcAreaID: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename NERCregionacr~m nercRegion
note nercRegion: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRIDsubregio~m subRegionAc
note subRegionAc: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRIDsubregio~e subRegionName
note subRegionName: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantassociat~o isoTerritory
note isoTerritory: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantFIPSstat~e fipsState
note fipsState: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantFIPScoun~e fipsCounty
note fipsCounty: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcountyname plantCounty
note plantCounty: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantlatitude plantLat
note plantLat: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantlongitude plantLong
note plantLong: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Countycentroi~t centroidFlag
note centroidFlag: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Numberofboilers nBoilers
note nBoilers: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Numberofgener~s nGenerators
note nGenerators: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcombusti~s combustion
note combustion: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantemission~s emissionSource
note emissionSource: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryf~l primaryFuel
note primaryFuel: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryc~e fuelCat
note fuelCat: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryf~a fuelGenCat
note fuelGenCat: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Flagindicatin~u coal
note coal: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcapacity~r capacityFactor
note capacityFactor: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnameplat~W nameplateCap
note nameplateCap: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Biogasbiomass~t biomassAdjust
note biomassAdjust: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Combinedheata~l chpPlant
note chpPlant: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantusefu~t mmbtu
note mmbtu: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantpower~o chpHeatRatio
note chpHeatRatio: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantelect~a chpEAlloFactor
note chpEAlloFactor: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantpumpedst~g pumpedStorage
note pumpedStorage: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualhea~u annHeatIn
note annHeatIn: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~M ozHeatIn
note ozHeatIn: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualne~h netGen
note netGen: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozone~atio ozoneNetGetMWh
note ozoneNetGetMWh: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~s NOxEmis
note NOxEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~s ozoneNOxEmis
note ozoneNOxEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~s SO2Emis
note SO2Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualC~ns CO2Emis
note CO2Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~s CH4Emis
note CH4Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~s N2OEmis
note N2OEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualC~is CO2EqEmis
note CO2EqEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~s HgEmis
note HgEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~m NOxOutER
note NOxOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~t ozoneNOxOutER
note ozoneNOxOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~m SO2OutER
note SO2OutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~m CO2OutER
note CO2OutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~m CH4OutER
note CH4OutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~m N2OOutER
note N2OOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~a CO2EqOutER
note CO2EqOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~i HgOutER
note HgOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~n NOxInER
note NOxInER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~i ozoneNOxInER
note ozoneNOxInER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~n SO2InER
note SO2InER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~n CO2InER
note CO2InER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~r HgInER
note HgInER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~p NOxCOutER
note NOxCOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozone~stio ozoneNOxCOutER
note ozoneNOxCOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~p SO2COutER
note SO2COutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~p CO2COutER
note CO2COutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~p CH4COutER
note CH4COutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~p N2OCOutER
note N2OCOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~u HgCOutER
note HgCOutER: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~xemis uaNOxEmis
note uaNOxEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~O uaOzoneNOxEmis
note uaOzoneNOxEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantun~SO2emis uaSO2Emis
note uaSO2Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantun~CO2emis uaCO2Emis
note uaCO2Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~4emis uaCH4Emis
note uaCH4Emis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~Oemis uaN2OEmis
note uaN2OEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjus~ss uaHgEmis
note uaHgEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~p uaHeatIn
note uaHeatIn: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~e uaOzoneSeaHeat
note uaOzoneSeaHeat: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnominalh~h nomHeatRa
note nomHeatRa: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualco~n coalNet
note coalNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualoi~n oilNet
note oilNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualga~n gasNet
note gasNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualnu~t nuclearNet
note nuclearNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualhy~o hydroNet
note hydroNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualbi~t biomassNet
note biomassNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualwi~n windNet
note windNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualso~o solarNet
note solarNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualge~e geothermalNet
note geothermalNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualot~e otherFosilNet
note otherFosilNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualot~c otherUnknwNet
note otherUnknwNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualto~s nonrenewNet
note nonrenewNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannual~sne renewNet
note renewNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannua~rene nonhydroNet
note nonhydroNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannual~nne combNet
note combNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualto~n noncombNet
note noncombNet: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcoalgene~r coalPer
note coalPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantoilgener~e oilPer
note oilPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantgasgener~e gasPer
note gasPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnuclearg~t nuclearPer
note nuclearPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planthydrogen~t hydroPer
note hydroPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantbiomassg~t biomassPer
note biomassPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantwindgene~r windPer
note windPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantsolargen~t solarPer
note solarPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantgeotherm~c geothernalPer
note geothernalPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantotherfos~e otherFosilPer
note otherFosilPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantotherunk~d otherUnknwPer
note otherUnknwPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantto~sgenera nonrenewPer
note nonrenewPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalren~o renewPer
note renewPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalnon~s nonhydroPer
note nonhydroPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalcom~o combPer
note combPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantto~ngenera noncombPer
note noncombPer: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownernam~t ownName1
note ownName1: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownercod~t ownCode1
note ownCode1: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerper~t ownPer1
note ownPer1: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerna~nd ownName2
note ownName2: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerco~nd ownCode2
note ownCode2: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerpe~nd ownPer2
note ownPer2: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerna~rd ownName3
note ownName3: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerco~rd ownCode3
note ownCode3: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerpe~rd ownPer3
note ownPer3: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~rth ownName4
note ownName4: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~rth ownCode4
note ownCode4: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~rth ownPer4
note ownPer4: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~mefifth ownName5
note ownName5: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~defifth ownCode5
note ownCode5: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~tfifth ownPer5
note ownPer5: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~xth ownName6
note ownName6: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~xth ownCode6
note ownCode6: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~xth ownPer6
note ownPer6: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~meseventh ownName7
note ownName7: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~deseventh ownCode7
note ownCode7: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planto~tseventh ownPer7
note ownPer7: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~hth ownName8
note ownName8: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~hth ownCode8
note ownCode8: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~hth ownPer8
note ownPer8: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~meninth ownName9
note ownName9: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~deninth ownCode9
note ownCode9: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~tninth ownPer9
note ownPer9: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~metenth ownName10
note ownName10: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~detenth ownCode10
note ownCode10: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~ttenth ownPer10
note ownPer10: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~meeleventh ownName11
note ownName11: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~deeleventh ownCode11
note ownCode11: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~televenth ownPer11
note ownPer11: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~metwelfth ownName12
note ownName12: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~detwelfth ownCode12
note ownCode12: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planto~ttwelfth ownPer12
note ownPer12: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~methirteenth ownName13
note ownName13: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~dethirteenth ownCode13
note ownCode13: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~tthirteenth ownPer13
note ownPer13: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~mefourteenth ownName14
note ownName14: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~defourteenth ownCode14
note ownCode14: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~tfourteenth ownPer14
note ownPer14: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~mefifteenth ownName15
note ownName15: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~defifteenth ownCode15
note ownCode15: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~tfifteenth ownPer15
note ownPer15: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~mesixteenth ownName16
note ownName16: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~desixteenth ownCode16
note ownCode16: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~tsixteenth ownPer16
note ownPer16: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2006year~s egrid2006
note egrid2006: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2007year~s egrid2007
note egrid2007: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2010year~s egrid2010
note egrid2010: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2012year~s egrid2012
note egrid2012: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
save 02eGrid2010-coded_20160406
cd ..
cd Posted
save 02eGrid2010-coded_20160406
clear all
cd ..
//
//
// manage egrid 2010 data
cd Posted
use 01eGrid2012_20160406
cd ..
cd Working
label data "2012 eGrid Plant Data"
note: "All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2012file~u plantID
note plantID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard""
rename Plantstateabb~n plantState
note plantState: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantname plantName
note plantName: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename DOEEIAORISpla~c orisCode
note orisCode: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantEPAFacil~t facID
note facID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantoperator~e plantOperator
note plantOperator: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantoperatorID opID
note opID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Utilityservic~e terName
note terName: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Utilityservic~D terID
note terID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename IDoftheoperat~p opParentID
note opParentID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Nameoftheoper~o opParentName
note opParentName: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Powercontrola~e pcAreaName
note pcAreaName: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Powercontrola~D pcAreaID
note pcAreaID: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename NERCregionacr~m nercRegion
note nercRegion: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRIDsubregio~m subRegionAc
note subRegionAc: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRIDsubregio~e subRegionName
note subRegionName: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantassociat~o isoTerritory
note isoTerritory: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantFIPSstat~e fipsState
note fipsState: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantFIPScoun~e fipsCounty
note fipsCounty: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcountyname plantCounty
note plantCounty: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantlatitude plantLat
note plantLat: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantlongitude plantLong
note plantLong: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Countycentroi~t centroidFlag
note centroidFlag: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Numberofboilers nBoilers
note nBoilers: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Numberofgener~s nGenerators
note nGenerators: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcombusti~s combustion
note combustion: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantemission~s emissionSource
note emissionSource: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryf~l primaryFuel
note primaryFuel: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryc~e fuelCat
note fuelCat: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantprimaryf~a fuelGenCat
note fuelGenCat: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Flagindicatin~u coal
note coal: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcapacity~r capacityFactor
note capacityFactor: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnameplat~W nameplateCap
note nameplateCap: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Biogasbiomass~t biomassAdjust
note biomassAdjust: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Combinedheata~l chpPlant
note chpPlant: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantusefu~t mmbtu
note mmbtu: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantpower~o chpHeatRatio
note chpHeatRatio: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename CHPplantelect~a chpEAlloFactor
note chpEAlloFactor: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantpumpedst~g pumpedStorage
note pumpedStorage: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualhea~u annHeatIn
note annHeatIn: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~M ozHeatIn
note ozHeatIn: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualne~h netGen
note netGen: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozone~atio ozoneNetGetMWh
note ozoneNetGetMWh: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~s NOxEmis
note NOxEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~s ozoneNOxEmis
note ozoneNOxEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~s SO2Emis
note SO2Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualC~ns CO2Emis
note CO2Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~s CH4Emis
note CH4Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~s N2OEmis
note N2OEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualC~is CO2EqEmis
note CO2EqEmis: "2010 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~s HgEmis
note HgEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~m NOxOutER
note NOxOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~t ozoneNOxOutER
note ozoneNOxOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~m SO2OutER
note SO2OutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~m CO2OutER
note CO2OutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~m CH4OutER
note CH4OutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~m N2OOutER
note N2OOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~a CO2EqOutER
note CO2EqOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~i HgOutER
note HgOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~n NOxInER
note NOxInER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozonesea~i ozoneNOxInER
note ozoneNOxInER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~n SO2InER
note SO2InER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~n CO2InER
note CO2InER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~r HgInER
note HgInER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualNO~p NOxCOutER
note NOxCOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantozone~stio ozoneNOxCOutER
note ozoneNOxCOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualSO~p SO2COutER
note SO2COutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCO~p CO2COutER
note CO2COutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualCH~p CH4COutER
note CH4COutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualN2~p N2OCOutER
note N2OCOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename PlantannualHg~u HgCOutER
note HgCOutER: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~xemis uaNOxEmis
note uaNOxEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~O uaOzoneNOxEmis
note uaOzoneNOxEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantun~SO2emis uaSO2Emis
note uaSO2Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantun~CO2emis uaCO2Emis
note uaCO2Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~4emis uaCH4Emis
note uaCH4Emis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunad~Oemis uaN2OEmis
note uaN2OEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjus~ss uaHgEmis
note uaHgEmis: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~p uaHeatIn
note uaHeatIn: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantunadjust~e uaOzoneSeaHeat
note uaOzoneSeaHeat: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnominalh~h nomHeatRa
note nomHeatRa: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualco~n coalNet
note coalNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualoi~n oilNet
note oilNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualga~n gasNet
note gasNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualnu~t nuclearNet
note nuclearNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualhy~o hydroNet
note hydroNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualbi~t biomassNet
note biomassNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualwi~n windNet
note windNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualso~o solarNet
note solarNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualge~e geothermalNet
note geothermalNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualot~e otherFosilNet
note otherFosilNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualot~c otherUnknwNet
note otherUnknwNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualto~s nonrenewNet
note nonrenewNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannual~sne renewNet
note renewNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannua~rene nonhydroNet
note nonhydroNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannual~nne combNet
note combNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantannualto~n noncombNet
note noncombNet: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantcoalgene~r coalPer
note coalPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantoilgener~e oilPer
note oilPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantgasgener~e gasPer
note gasPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantnuclearg~t nuclearPer
note nuclearPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planthydrogen~t hydroPer
note hydroPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantbiomassg~t biomassPer
note biomassPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantwindgene~r windPer
note windPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantsolargen~t solarPer
note solarPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantgeotherm~c geothernalPer
note geothernalPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantotherfos~e otherFosilPer
note otherFosilPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantotherunk~d otherUnknwPer
note otherUnknwPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantto~sgenera nonrenewPer
note nonrenewPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalren~o renewPer
note renewPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalnon~s nonhydroPer
note nonhydroPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planttotalcom~o combPer
note combPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantto~ngenera noncombPer
note noncombPer: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownernam~t ownName1
note ownName1: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownercod~t ownCode1
note ownCode1: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerper~t ownPer1
note ownPer1: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerna~nd ownName2
note ownName2: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerco~nd ownCode2
note ownCode2: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerpe~nd ownPer2
note ownPer2: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerna~rd ownName3
note ownName3: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerco~rd ownCode3
note ownCode3: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerpe~rd ownPer3
note ownPer3: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~rth ownName4
note ownName4: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~rth ownCode4
note ownCode4: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~rth ownPer4
note ownPer4: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~mefifth ownName5
note ownName5: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~defifth ownCode5
note ownCode5: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~tfifth ownPer5
note ownPer5: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~xth ownName6
note ownName6: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~xth ownCode6
note ownCode6: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~xth ownPer6
note ownPer6: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~meseventh ownName7
note ownName7: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~deseventh ownCode7
note ownCode7: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planto~tseventh ownPer7
note ownPer7: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownern~hth ownName8
note ownName8: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerc~hth ownCode8
note ownCode8: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantownerp~hth ownPer8
note ownPer8: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~meninth ownName9
note ownName9: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~deninth ownCode9
note ownCode9: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~tninth ownPer9
note ownPer9: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~metenth ownName10
note ownName10: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantow~detenth ownCode10
note ownCode10: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plantown~ttenth ownPer10
note ownPer10: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~meeleventh ownName11
note ownName11: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~deeleventh ownCode11
note ownCode11: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~televenth ownPer11
note ownPer11: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~metwelfth ownName12
note ownName12: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plant~detwelfth ownCode12
note ownCode12: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Planto~ttwelfth ownPer12
note ownPer12: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~methirteenth ownName13
note ownName13: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~dethirteenth ownCode13
note ownCode13: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~tthirteenth ownPer13
note ownPer13: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~mefourteenth ownName14
note ownName14: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pl~defourteenth ownCode14
note ownCode14: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~tfourteenth ownPer14
note ownPer14: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~mefifteenth ownName15
note ownName15: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~defifteenth ownCode15
note ownCode15: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~tfifteenth ownPer15
note ownPer15: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~mesixteenth ownName16
note ownName16: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Pla~desixteenth ownCode16
note ownCode16: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename Plan~tsixteenth ownPer16
note ownPer16: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2004file~u egrid2004
note egrid2004: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2005file~u egrid2005
note egrid2005: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2007file~u egrid2007
note egrid2007: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2009file~u egrid2009
note egrid2009: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
rename eGRID2010file~u egrid2010
note egrid2010: "2012 eGrid Plant Data, All eGRID Files (1996-2012) downloaded at http://www.epa.gov/ghgreporting/ghg-reporting-program-data-sets on February 18, 2016 by Kate Willyard"
save 02eGrid2012-coded_20160406
cd ..
cd Posted
save 02eGrid2012-coded_20160406
clear all
cd ..
//