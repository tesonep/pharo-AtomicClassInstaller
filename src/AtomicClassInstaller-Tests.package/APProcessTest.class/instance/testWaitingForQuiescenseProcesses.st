as yet unclassified
testWaitingForQuiescenseProcesses
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
	
	[ 
		(Delay forSeconds: 3) wait.
		semaphore signal.
		semaphore signal.
	 ] fork.	
	
	tool waitAllQuiescent.
	self assert:tool numberOfWaits > 0. 