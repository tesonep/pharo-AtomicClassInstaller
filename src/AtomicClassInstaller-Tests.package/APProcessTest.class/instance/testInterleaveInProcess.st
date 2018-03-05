as yet unclassified
testInterleaveInProcess
	| first second mockProcess p |
	first := Semaphore new.
	second := Semaphore new.
		
	mockProcess := ACIMockProcess new.
	mockProcess semaphore: first.
	
	p := [ mockProcess run ] fork.
	
	Processor yield.
	
	ACIProcessTool new interleaveBlock: [ second signal ]  afterBlockedProcess: p.
	
	first signal.
	
   self deny:(second waitTimeoutSeconds: 1).