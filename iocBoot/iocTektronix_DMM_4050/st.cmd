#!../../bin/windows-x64/Tektronix_DMM_4050

## You may have to change Tektronix_DMM_4050 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_DMM_4050.dbd"
Tektronix_DMM_4050_registerRecordDeviceDriver pdbbase

#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4050App/protocol/Tektronix_DMM_4050.xml", "", 0)
lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Tektronix_DMM_4050App/protocol/Tektronix_DMM_4050.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")

## Load record instances
dbLoadRecords("db/Tektronix_DMM_4050.db","P=DMM4050:")

cd ${TOP}/iocBoot/${IOC}
iocInit

