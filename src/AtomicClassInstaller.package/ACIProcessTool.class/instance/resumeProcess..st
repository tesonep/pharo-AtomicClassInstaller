process control
resumeProcess: aProcess
 	| aList |
	aList := suspendedLists at: aProcess.
	^aList addLast: aProcess. 