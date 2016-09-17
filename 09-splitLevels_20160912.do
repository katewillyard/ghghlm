// set working directory and save log
cd "C:/Users/TXCRDC/Documents/Research/ghghlm/Posted/logfiles"
capture log close master
log using 09-splitLevels_20160912, name(master) replace text
cd ..
cd ..
// program:		09-splitLevels_20160912.do
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
// Make EPA Facility File
cd Posted
use 08epa&compustat-wParCoFacVar_20160912
cd ..
cd Working
label data "EPA Facility Data (GHG RPT)[Facilty - Year] file dowloaded from http://www.epa.gov/enviro/greenhouse-gas-customized-search; Facility parent verified using Lexis Nexis Corporate Affiliations."
note: "See 09-splitLevels_20160912.do for more information about how this dataset was created"
drop if epaCompustatMerge !=3
keep parTicker year frsID facName facAddress facCity facState facCounty facLat facLong facTotDirect facCO2 facCH4 facN2O facStaComb facElecGen parPerOwn parNotes plantID plantState plantName orisCode facID plantOperator opID terName terID opParentID opParentName pcAreaName pcAreaID nercRegion subRegionAc subRegionName isoTerritory fipsState fipsCounty plantCounty plantLat plantLong nBoilers nGenerators combustion emissionSource primaryFuel fuelCat fuelGenCat coal capacityFactor nameplateCap biomassAdjust chpPlant mmbtu chpHeatRatio chpEAlloFactor pumpedStorage annHeatIn ozHeatIn netGen ozoneNOxEmis SO2Emis CO2Emis CH4Emis N2OEmis CO2Emis HgEmis NOxOutER ozoneNOxOutER SO2OutER CO2OutER CH4OutER N2OOutER CO2EqOutER HgOutER NOxInER ozoneNOxInER SO2InER CO2InER HgInER NOxCOutER ozoneNOxCOutER SO2COutER CO2COutER CH4COutER N2OCOutER HgCOutER uaNOxEmis uaOzoneNOxEmis uaSO2Emis uaCO2Emis uaCH4Emis uaN2OEmis uaHgEmis uaHeatIn uaOzoneSeaHeat nomHeatRa coalNet oilNet gasNet nuclearNet hydroNet biomassNet windNet solarNet geothermalNet otherFosilNet otherUnknwNet nonrenewNet renewNet nonhydroNet combNet noncombNet coalPer oilPer gasPer nuclearPer hydroPer biomassPer windPer solarPer geothernalPer otherFosilPer otherUnknwPer nonrenewPer renewPer nonhydroPer combPer noncombPer
save 09facData_20160912
cd ..
cd Posted
save 09facData_20160912
export delimited using "C:\Users\TXCRDC\Documents\Research\ghghlm\Posted\09facData_20160912.csv", replace
clear
clear
cd ..
//
//
// Make EPA/Compustat Parent Company File
cd Posted
use 08epa&compustat-wParCoFacVar_20160912
cd ..
cd Working
label data "EPA & Compustat Parent Company Data [Parent - Year] file dowloaded from http://www.epa.gov/enviro/greenhouse-gas-customized-search and Compustat"
note: "See 09-splitLevels_20160912.do for more information about how this dataset was created"
keep parTicker ein cusip gvkey parName conm curcd aco acqao act ao aqa aqc aqp at capx cdv ch ci citotal dcs dd1 dd2 dfs dlc dlcch dltt dv dvc dvdnp dvp dvpd dvt ebit ebitda emp epsfi epsfx epspi epspx esopdlt esub gdwl gla glp gp ibc idit lco lct lo lt ni optex optexd optfvgr optgr optosby optosey prstkc prstkc prstkcc prstkpc revt sale scstkc seq spce sstk stkco stkcpa teq txc txfed txfo txpd txt udd udolt ugi unwc uopi usubdvp usubpstk uxinst uxintd wcap wcapch xintd xstfws xt exchg cik costat fic naicsh sich dvpsp_c dvpsx_c prcc_c prch_c prcl_c dvpsp_f dvpsx_f mkvalt prcc_f prch_f prcl_f rank au auop auopic ceoso cfoso add1 add2 addzip city incorp loc naics sic state stko amc aqi aqs capr1 capr2 capr3 dcvt ibki idilb invrei invrm invt lcoxar llot lse optprcby optprcex optprcey optprcgr optprcwa datadate fyear indfmt consol popsrc datafmt tic fyr parGHGfac_inNAICS
duplicates drop 
save 09parData_20160912
cd ..
cd Posted
save 09parData_20160912
export delimited using "C:\Users\TXCRDC\Documents\Research\ghghlm\Posted\09parData_20160912.csv", replace
clear
