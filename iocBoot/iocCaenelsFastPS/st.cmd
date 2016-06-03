#!../../bin/linux-x86/CaenelsFastPS

## You may have to change CaenelsFastPS to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/CaenelsFastPS.dbd",0,0)
CaenelsFastPS_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/CaenelsFastPS.db","user=jan")

iocInit()

## Start any sequence programs
#seq sncCaenelsFastPS,"user=jan"
