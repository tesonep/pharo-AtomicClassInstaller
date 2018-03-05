as yet unclassified
testNewProcessLocateProcesses
	| ps | 
	
	process := [ semaphore ifNotNil:#wait ] fork.
	
	ps := ACIProcessTool new nonSystemProcesses.
	self assert: ps isNotEmpty.