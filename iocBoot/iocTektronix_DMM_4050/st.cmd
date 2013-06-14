#!../../bin/windows-x64/Tektronix_DMM_4050

## You may have to change Tektronix_DMM_4050 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_DMM_4050.dbd"
Tektronix_DMM_4050_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=kht13119Host")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=kht13119Host"
