#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Mar 27 17:07:10 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v09.12-s159_1 (64bit) 07/15/2010 13:17 (Linux 2.6)
#@(#)CDS: NanoRoute v09.12-s013 NR100629-2344/USR64-UB (database version 2.30, 102.1.1) {superthreading v1.15}
#@(#)CDS: CeltIC v09.12-s012_1 (64bit) 07/01/2010 05:52:50 (Linux 2.6.9-78.0.17.ELsmp)
#@(#)CDS: AAE 09.12-e022 (64bit) 07/15/2010 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 09.12-s069_1 (64bit) Jul 15 2010 05:35:17 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v09.12-s009

windowSelect 0.022 0.101 0.052 0.079
windowSelect 0.025 0.090 0.068 0.066
windowSelect 0.032 0.091 0.063 0.065
windowSelect 0.032 0.082 0.067 0.053
windowSelect 0.024 0.080 0.065 0.051
windowSelect 0.026 0.085 0.069 0.054
windowSelect 0.065 0.078 0.013 0.093
windowSelect 0.015 0.087 0.080 0.035
windowSelect 0.076 0.041 0.028 0.081
windowSelect 0.014 0.092 0.075 0.037
windowSelect 0.080 0.035 0.009 0.103
windowSelect 0.003 0.106 0.085 0.042
getenv ENCOUNTER_CONFIG_RELATIVE_CWD
setDoAssign
getIoFlowFlag
setUIVar rda_Input ui_gndnet VSS
setUIVar rda_Input ui_leffile ../../../../../../cad/cad2/ece451/se/ece451_cells.lef
setUIVar rda_Input ui_netlist {control_syn.v ../../../../../../cad/cad2/ece451/verilog/ece451_cells.v}
setUIVar rda_Input ui_topcell control
setUIVar rda_Input ui_pwrnet VDD
commitConfig
fit
setDrawView fplan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CORE -r 0.5 0.85 2.5 2.5 2.5 2.5
uiSetTool select
getIoFlowFlag
fit
loadIoFile ioplace.ioc
getMultiCpuUsage -localCpu
setPlaceMode -fp false
placeDesign -prePlaceOpt
checkPlace control.checkPlace
setDrawView place
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VSS -type tielo -inst *
globalNetConnect VDD -type tiehi -inst *
globalNetConnect VDD -type net -net {L[0]}
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { met1 met3 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer met1 -allowLayerChange 1 -targetViaTopLayer met3 -crossoverViaTopLayer met3 -targetViaBottomLayer met1 -nets { VSS VDD }
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry
saveDesign control.enc
summaryReport -noHtml -outfile summaryReport.out
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.7
defOut -floorplan -netlist -routing control.def
set dbgLefDefOutVersion NULL
