set( CPACK_PACKAGE_VENDOR "US Department of Energy" )

list(APPEND CMAKE_MODULE_PATH "${CMAKE_BINARY_DIR}/Modules")

set(CPACK_PACKAGE_VERSION_MAJOR "${CMAKE_VERSION_MAJOR}" )
set(CPACK_PACKAGE_VERSION_MINOR "${CMAKE_VERSION_MINOR}" )
set(CPACK_PACKAGE_VERSION_PATCH "${CMAKE_VERSION_PATCH}" )
set(CPACK_PACKAGE_VERSION_BUILD "${CMAKE_VERSION_BUILD}" )

set(CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}.${CPACK_PACKAGE_VERSION_BUILD}")

include(cmake/TargetArch.cmake)
target_architecture(TARGET_ARCH)
set(CPACK_PACKAGE_FILE_NAME "${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION}-${CMAKE_SYSTEM_NAME}-${TARGET_ARCH}")
set(CPACK_PACKAGING_INSTALL_PREFIX "/${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}-${CPACK_PACKAGE_VERSION_MINOR}-${CPACK_PACKAGE_VERSION_PATCH}")

if( WIN32 AND NOT UNIX )
  set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP TRUE)
  include(InstallRequiredSystemLibraries)
  if(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS)
  install(PROGRAMS ${CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS} DESTINATION "./")
  endif()
endif()

configure_file(cmake/license.in.txt "${CMAKE_BINARY_DIR}/license.txt" @ONLY)
install(FILES "${CMAKE_BINARY_DIR}/license.txt" DESTINATION "./")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_BINARY_DIR}/license.txt")

install( FILES "${CMAKE_BINARY_DIR}/Energy+.idd" DESTINATION ./ )

# Install files that are in the current repo
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/AirCooledChiller.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ASHRAE_2005_HOF_Materials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Boilers.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/California_Title_24-2008.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Chillers.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Color Choices.dxf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/CompositeWallConstructions.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/DXCoolingCoil.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectricGenerators.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectricityUSAEnvironmentalImpactFactors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectronicEnthalpyEconomizerCurves.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ExhaustFiredChiller.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FluidPropertiesRefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FossilFuelEnvironmentalImpactFactors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/GLHERefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/GlycolPropertiesRefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2010.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2011.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2012.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/MoistureMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PerfCurves.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PrecipitationSchedulesUSA-fullset_Release.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PrecipitationSchedulesUSA.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCasesDataSet.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCases.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCasesSetNumberOne.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurves.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurvesNeedFix.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurvesOK.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ResidentialACsAndHPsPerfCurves.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RooftopPackagedHeatPump.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SandiaPVdata.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Schedules.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SolarCollectors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/StandardReports.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SurfaceColorSchemes.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/USHolidays-DST.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Window5DataFile.dat" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowBlindMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowConstructs.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowGasMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowGlassMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowScreenMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowShadeMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FMUs/MoistAir.fmu" DESTINATION "./DataSets/FMUs")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FMUs/ShadingController.fmu" DESTINATION "./DataSets/FMUs")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/TDV/TDV_2008_kBtu_CTZ06.csv" DESTINATION "./DataSets/TDV")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/TDV/TDV_read_me.txt" DESTINATION "./DataSets/TDV")

INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/Locations-DesignDays.xls" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/SandiaPVdata.imf" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/SolarCollectors.imf" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/UtilityTariffObjects.imf" DESTINATION "./MacroDataSets")

# weather files
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.stat" DESTINATION "./WeatherData")

INSTALL( DIRECTORY testfiles/ DESTINATION ExampleFiles/
  PATTERN _* EXCLUDE
  PATTERN *.ddy EXCLUDE
  PATTERN CMakeLists.txt EXCLUDE
)

# remote files.  All of these should eventually be generated from content in the EnergyPlusTeam project.
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Acknowledgments.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/appguidemenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/AuxiliaryPrograms.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/devguidemenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EMS_Application_Guide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EngineeringReference.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EPlusMainMenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ExternalInterfaces_Application_Guide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/GettingStarted.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/index.pdx" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/InputOutputReference.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/InterfaceDeveloper.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ModuleDeveloper.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/OutputDetailsAndExamples.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/PlantApplicationGuide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ProgrammingStandard.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Tips_and_Tricks_Using_EnergyPlus.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Using_EnergyPlus_for_Compliance.pdf" "./Documentation")

# TODO Remove version from file name or generate
# These files names are stored in variables because they also appear as start menu shortcuts later.
set( ADDRESSED_ISSUES Addressed_Issues-V8-2-0.html )
set( ENHANCEMENT_LIST_ITEMS Enhancement_List_Items-V8-2-0.html )
set( KNOWN_ISSUES Known_Issues-V8-2-0.html )
set( RULES_XLS Rules8-1-0-to-8-2-0.xls )
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${ADDRESSED_ISSUES}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/Bugreprt.txt" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${ENHANCEMENT_LIST_ITEMS}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/ep.gif" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${KNOWN_ISSUES}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/ObjectStatus.xls" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/readme.html" "./" "readme.html" TRUE)
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${RULES_XLS}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/Report%20Variables%208-1-0-009%20to%208-2-0.csv" "PreProcess/IDFVersionUpdater/" "Report Variables 8-1-0-009 to 8-2-0.csv")
install(FILES "${CMAKE_SOURCE_DIR}/idd/V8-1-0-Energy+.idd" DESTINATION "PreProcess/IDFVersionUpdater/")
install( FILES "${CMAKE_BINARY_DIR}/Energy+.idd" DESTINATION "PreProcess/IDFVersionUpdater/" RENAME "V${CMAKE_VERSION_MAJOR}-${CMAKE_VERSION_MINOR}-${CMAKE_VERSION_PATCH}-Energy+.idd" )
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/VariableNameListAudit.xlsx" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/CurveFitTools/IceStorageCurveFitTool.xlsm" "PreProcess/HVACCurveFitTool/")

if( WIN32 )
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/EP-Launch.exe" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/Epl-run.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunDirMulti.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunEP.ico" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunEPlus.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunReadESO.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/Runep.pif" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/AppGPostProcess/appgpostprocess.exe" "PostProcess/AppGPostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/CSVproc.exe" "PostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/RunReadESO.bat" "PostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/BLASTTranslator/BLASTTranslator.txt" "PreProcess/BLASTTranslator/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/CalcSoilSurfTemp.exe" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/CalcSoilSurfTemp.out" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/RunCalcSoilSurfTemp.bat" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffCheck.exe" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffCheckExample.cci" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffConv.exe" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffConvExample.coi" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/EPL-Check.BAT" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/EPL-Conv.BAT" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/ReadMe.txt" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/DOE2Translator/DOE2Translator.txt" "PreProcess/DOE2Translator/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/GrndTempCalc/RunBasement.bat" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/GrndTempCalc/RunSlab.bat" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/HVACCurveFitTool/CurveFitTool.xlsm" "PreProcess/HVACCurveFitTool/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/IDFEditor/IDFEditor.exe" "PreProcess/IDFEditor/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ParametricPreProcessor/RunParam.bat" "PreProcess/ParametricPreProcessor/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ParametricSpreadsheets/ParametricSpreadsheets.txt" "PreProcess/ParametricSpreadsheets/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/readme.txt" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/View3D.exe" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/View3D32.pdf" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/ViewFactorInterface.xls" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Abbreviations.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_Monthly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_OtherMonthly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_Yearly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Cal%20Climate%20Zone%20Lat%20Long%20data.csv" "PreProcess/WeatherConverter/" "Cal Climate Zone Lat Long data.csv")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/CountryCodes.txt" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/EPlusWth.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libifcoremd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libifportmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libmmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/svml_dispmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/TimeZoneCodes.txt" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/WBANLocations.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Weather.exe" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/Appearance%20Pak.dll" "PostProcess/EP-Compare/EP-Compare Libs/" "Appearance Pak.dll")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/EHInterfaces5001.dll" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/EHObjectArray5001.dll" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/EHObjectCollection5001.dll" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/EHTreeView4301.DLL" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare%20Libs/MBSChartDirector5Plugin16042.dll" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Win/EP-Compare.exe" "PostProcess/EP-Compare/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/GraphHints.csv" "PostProcess/EP-Compare/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/EPDrawGUI%20Libs/Appearance%20Pak.dll" "PreProcess/EPDraw/EPDrawGUI Libs/" "Appearance Pak.dll")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/EPDrawGUI%20Libs/Shell.dll" "PreProcess/EPDraw/EPDrawGUI Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/EPDrawGUI.exe" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/EPlusDrw.dll" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/libifcoremd.dll" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/libifportmd.dll" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/libmmd.dll" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPDraw/Run-Win/svml_dispmd.dll" "PreProcess/EPDraw/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/basementexample.audit" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/basementexample.csv" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/BasementExample.idf" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/basementexample.out" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/basementexample_out.idf" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/slabexample.ger" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/slabexample.gtp" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/GrndTempCalc/SlabExample.idf" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/IDFVersionUpdater/Run-Win/IDFVersionUpdater%20Libs/Appearance%20Pak.dll" "PreProcess/IDFVersionUpdater/IDFVersionUpdater Libs/" "Appearance Pak.dll")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/IDFVersionUpdater/Run-Win/IDFVersionUpdater%20Libs/Shell.dll" "PreProcess/IDFVersionUpdater/IDFVersionUpdater Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/IDFVersionUpdater/Run-Win/IDFVersionUpdater.exe" "PreProcess/IDFVersionUpdater/")
  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPMacro/Windows/EPMacro.exe" "./")
endif()

if( APPLE )
  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/MacOS/EP-Launch%20Lite" "EP-Launch Lite.app/Contents/MacOS/" "EP-Launch Lite")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/PkgInfo" "EP-Launch Lite.app/Contents/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/EnergyPlus.icns" "EP-Launch Lite.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/English.lproj/InfoPlist.strings" "EP-Launch Lite.app/Contents/Resources/English.lproj/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/English.lproj/MainMenu.nib" "EP-Launch Lite.app/Contents/Resources/English.lproj/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/ep-small.gif" "EP-Launch Lite.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/Scripts/Application.scpt" "EP-Launch Lite.app/Contents/Resources/Scripts/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Resources/Scripts/Content%20Controller.scpt" "EP-Launch Lite.app/Contents/Resources/Scripts/" "Content Controller.scpt")
  install_remote_plist("https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/EP-Launch_Lite/build/Release/EP-Launch%20Lite.app/Contents/Info.plist" "EP-Launch Lite.app/Contents/" "eplaunchlite")

  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/MacOS/applet" "Uninstall EnergyPlus.app/Contents/MacOS/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/PkgInfo" "Uninstall EnergyPlus.app/Contents/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/Resources/applet.icns" "Uninstall EnergyPlus.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/Resources/applet.rsrc" "Uninstall EnergyPlus.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/Resources/description.rtfd/TXT.rtf" "Uninstall EnergyPlus.app/Contents/Resources/description.rtfd/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/Resources/Scripts/main.scpt" "Uninstall EnergyPlus.app/Contents/Resources/Scripts/")
  install_remote_plist("https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Mac/Uninstall%20EnergyPlus.app/Contents/Info.plist" "Uninstall EnergyPlus.app/Contents/" "epuninstall")

  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/\\#CoreClasses.rbx_0.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/\\#CoreClasses.rbx_1.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/\\#CoreClasses.rbx_5.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/MBS%20REALbasic%20ChartDirector%20Plugin.rbx_0.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks/" "MBS REALbasic ChartDirector Plugin.rbx_0.dylib")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/RBAppearancePak.rbx_0.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Frameworks/TreeView.rbx_0.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/Frameworks")
  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/MacOS/EP-Compare" "PostProcess/EP-Compare/EP-Compare.app/Contents/MacOS/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/MacOS/rbframework.dylib" "PostProcess/EP-Compare/EP-Compare.app/Contents/MacOS/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/PkgInfo" "PostProcess/EP-Compare/EP-Compare.app/Contents/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/131.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/19.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/24.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/34.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/36.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/40.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/41.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/65.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/81.png" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/EnergyPlus.icns" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Resources/EP-Compare.icns" "PostProcess/EP-Compare/EP-Compare.app/Contents/Resources/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/GraphHints.csv" "PostProcess/EP-Compare/")
  install_remote_plist("https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Mac/EP-Compare.app/Contents/Info.plist" "PostProcess/EP-Compare/EP-Compare.app/Contents/" "epcompare")

  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPMacro/Mac/EPMacro" "./")

  configure_file(scripts/runenergyplus.in "${CMAKE_BINARY_DIR}/scripts/runenergyplus" @ONLY)
  install(PROGRAMS "${CMAKE_BINARY_DIR}/scripts/runenergyplus" DESTINATION "./")
  install(PROGRAMS scripts/runepmacro DESTINATION "./")
  install(PROGRAMS scripts/runreadvars DESTINATION "./")

  configure_file("${PROJECT_SOURCE_DIR}/cmake/darwinpostflight.sh.in" ${CMAKE_BINARY_DIR}/darwinpostflight.sh)
  set(CPACK_POSTFLIGHT_SCRIPT "${CMAKE_BINARY_DIR}/darwinpostflight.sh")
endif()

if( UNIX AND NOT APPLE )
  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare" "PostProcess/EP-Compare/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/EHInterfaces5001.so" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/EHObjectArray5001.so" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/EHObjectCollection5001.so" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/EHTreeView4301.so" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/libMBSChartDirector5Plugin16042.so" "PostProcess/EP-Compare/EP-Compare Libs/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EP-Compare/Run-Linux/EP-Compare%20Libs/libRBAppearancePak.so" "PostProcess/EP-Compare/EP-Compare Libs/")

  install_remote(PROGRAMS "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/EPMacro/Linux/EPMacro" "./")

  configure_file(scripts/runenergyplus.in "${CMAKE_BINARY_DIR}/scripts/runenergyplus" @ONLY)
  install(PROGRAMS "${CMAKE_BINARY_DIR}/scripts/runenergyplus" DESTINATION "./")
  install(PROGRAMS scripts/runepmacro DESTINATION "./")
  install(PROGRAMS scripts/runreadvars DESTINATION "./")
endif()

configure_file("${CMAKE_SOURCE_DIR}/cmake/CMakeCPackOptions.cmake.in"
  "${CMAKE_BINARY_DIR}/CMakeCPackOptions.cmake" @ONLY)
set(CPACK_PROJECT_CONFIG_FILE "${CMAKE_BINARY_DIR}/CMakeCPackOptions.cmake")

INCLUDE(CPack)

