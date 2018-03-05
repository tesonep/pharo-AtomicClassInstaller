as yet unclassified
testLocateProcesses
	| ps | 
	
	(Delay forSeconds: 5) wait.
	
	ps := ACIProcessTool new nonSystemProcesses.
	
	ps isEmpty ifFalse:[
		ps do:[:e | self log:e longPrintString ]
	].
	
	self assertCollection: ps equals: #().