#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Mar 27 19:55:42 2015                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v09.12-s159_1 (64bit) 07/15/2010 13:17 (Linux 2.6)
#@(#)CDS: NanoRoute v09.12-s013 NR100629-2344/USR64-UB (database version 2.30, 102.1.1) {superthreading v1.15}
#@(#)CDS: CeltIC v09.12-s012_1 (64bit) 07/01/2010 05:52:50 (Linux 2.6.9-78.0.17.ELsmp)
#@(#)CDS: AAE 09.12-e022 (64bit) 07/15/2010 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CTE 09.12-s069_1 (64bit) Jul 15 2010 05:35:17 (Linux 2.6.9-89.0.19.ELsmp)
#@(#)CDS: CPE v09.12-s009

windowSelect 0.019 0.077 0.048 0.043
loadConfig control.conf 0
commitConfig
fit
setDrawView fplan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CORE -r 0.6 0.75 2.5 2.5 2.5 2.5
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
summaryReport -noHtml -outfile summaryReport.txt
