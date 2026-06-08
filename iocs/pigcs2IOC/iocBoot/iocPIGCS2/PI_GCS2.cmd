# PI GCS2 support

dbLoadTemplate("PI_GCS2.substitutions")

#drvAsynIPPortConfigure("C663_ETH","192.168.105.51:4008",0,0,0)
drvAsynIPPortConfigure("C663_ETH","192.168.105.24:4005",0,0,0)
#drvAsynIPPortConfigure("C663_ETH","192.168.117.26:4002",0,0,0)

# enable auto-connect: asynAutoConnect(portName, addr, yesNo)                                                                                                                             
asynAutoConnect("C663_ETH", 0, 1)

# Turn on asyn trace
asynSetTraceMask("C663_ETH",0,3)
asynSetTraceIOMask("C663_ETH",0,1)

# PI_GCS2_CreateController(portName, asynPort, numAxes, priority, stackSize, movingPollingRate, idlePollingRate, yesNoRef (1 for non-PI motors))
PI_GCS2_CreateController("C663", "C663_ETH",1, 0,0, 100, 1000, 1)

# Turn off asyn trace
asynSetTraceMask("C663_ETH",0,1)
asynSetTraceIOMask("C663_ETH",0,0)

# asyn record for troubleshooting
dbLoadRecords("$(ASYN)/db/asynRecord.db","P=pigcs2:,R=asyn_1,PORT=C663_ETH,ADDR=0,OMAX=256,IMAX=256")
dbLoadRecords("$(TOP)/db/PI_Support.db","P=pigcs2:,R=PI:,PORT=C663,ADDR=0,TIMEOUT=1")
