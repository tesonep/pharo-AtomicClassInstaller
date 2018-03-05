process events
processArrivedSyncPoint: aProcess
	waitingFor remove: aProcess.
	semaphore signal.
	Processor yield.