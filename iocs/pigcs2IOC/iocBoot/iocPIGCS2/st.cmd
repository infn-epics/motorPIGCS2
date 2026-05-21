#!../../bin/linux-x86_64/pigcs2

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/pigcs2.dbd"
pigcs2_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"

## motorUtil (allstop & alldone)
dbLoadRecords("$(MOTOR)/db/motorUtil.db", "P=pigcs2:")

# --- Motor referencing before driver connection --

iocshCmd("echo RON 1 0 | nc 192.168.117.26 4002 -w 1")
epicsThreadSleep(1.0)

iocshCmd("echo POS 1 0 | nc 192.168.117.26 4002 -w 1")
epicsThreadSleep(1.0)

iocshCmd("echo POS? | nc 192.168.117.26 4002 -w 1")
epicsThreadSleep(1.0)

##
## MOTOR_ADDR = IP address and PORT of the motor
< PI_GCS2.cmd
#< PI_GCS2_hexapod.cmd

iocInit

## motorUtil (allstop & alldone)
motorUtilInit("pigcs2:")

# Boot complete
