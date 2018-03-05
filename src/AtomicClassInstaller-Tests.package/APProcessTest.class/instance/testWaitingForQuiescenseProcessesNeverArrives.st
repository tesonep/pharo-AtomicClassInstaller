as yet unclassified
testWaitingForQuiescenseProcessesNeverArrives
	| process2 mockProcess mockProcess2 tool | 

	mockProcess := ACIMockProcess new.
	mockProcess semaphore: semaphore.
	process := [ mockProcess runWithoutMagic ] forkAt:50.
		
	mockProcess2 := ACIMockProcess new.
	mockProcess2 semaphore: semaphore.
	process2 := [ mockProcess2 run ] forkAt:50.
	
	Processor yield.
	
	tool := ACIProcessTool new.
	tool addModifiedMethod: #(ACIMockProcess #run).
	
	self should:[tool waitAllQuiescent]  raise:Error. 

	self assert:tool numberOfWaits = 5. 
	
	semaphore signal.
	semaphore signal.
