as yet unclassified
testDetectingQuiescentProcesses
	| process2 mockProcess tool | 
	
	process := [ semaphore wait ] fork.

	mockProcess := ACIMockProcess new.
	mockProcess semaphore: semaphore.

	process2 := [ mockProcess run ] fork.
	
	Processor yield.
	
	tool := ACIProcessTool new.
	tool addModifiedMethod: #(#ACIMockProcess #run).
	
	self assert: (tool isQuiescent: process).
	self deny: (tool isQuiescent: process2).
	self assertCollection: (tool nonQuiescentProcess) equals: { process2 }.