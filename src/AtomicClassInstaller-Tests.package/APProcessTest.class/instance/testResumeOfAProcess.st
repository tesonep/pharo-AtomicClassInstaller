as yet unclassified
testResumeOfAProcess	
	| s2 apProcessTool |
	apProcessTool := ACIProcessTool new.
	
	s2 := Semaphore new.
	process := [ semaphore wait. s2 signal. ] fork.	

	apProcessTool suspendProcess: process.
	
	self assert: (s2 waitTimeoutSeconds: 1).
	
	apProcessTool resumeProcess: process.
	
	semaphore signal.
	self deny: (s2 waitTimeoutSeconds: 1).
