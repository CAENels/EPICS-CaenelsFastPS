#!../../bin/linux-x86_64/CaenelsFastPS

< envPaths

epicsEnvSet ("STREAM_PROTOCOL_PATH", ".:../../protocols")
epicsEnvSet("P","$(R=caenels:)")
epicsEnvSet("R","$(R=fastps:)")

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/CaenelsFastPS.dbd",0,0)
CaenelsFastPS_registerRecordDeviceDriver(pdbbase)

## Configure device
drvAsynIPPortConfigure("L0","192.168.0.10:10001",0,0,0)

## Load record instances
dbLoadRecords("db/fastps.db", "P=$(P),R=$(R)")

cd "${TOP}/iocBoot/${IOC}"
iocInit()
