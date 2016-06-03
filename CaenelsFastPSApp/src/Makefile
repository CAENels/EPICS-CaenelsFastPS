TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = CaenelsFastPS
# CaenelsFastPS.dbd will be created and installed
DBD += CaenelsFastPS.dbd

# CaenelsFastPS.dbd will be made up from these files:
CaenelsFastPS_DBD += base.dbd

# Include dbd files from all support applications:
CaenelsFastPS_DBD += asyn.dbd
CaenelsFastPS_DBD += drvAsynIPPort.dbd
CaenelsFastPS_DBD += stream.dbd

# Add all the support libraries needed by this IOC
CaenelsFastPS_LIBS += asyn
CaenelsFastPS_LIBS += stream

# CaenelsFastPS_registerRecordDeviceDriver.cpp derives from CaenelsFastPS.dbd
CaenelsFastPS_SRCS += CaenelsFastPS_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
CaenelsFastPS_SRCS_DEFAULT += CaenelsFastPSMain.cpp
CaenelsFastPS_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#CaenelsFastPS_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
CaenelsFastPS_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

