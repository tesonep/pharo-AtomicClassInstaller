private
addSignalContextAndWait: aProcess
	(waitingFor includes: aProcess)
		ifFalse: [ 
			waitingFor add: aProcess.
			self interleaveBlock: [ self processArrivedSyncPoint: Processor activeProcess ] afterBlockedProcess: aProcess ]