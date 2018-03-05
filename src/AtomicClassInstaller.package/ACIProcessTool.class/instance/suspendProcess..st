process control
suspendProcess: aProcess
 	| aList |
	aList := aProcess suspend.
	suspendedLists at: aProcess put: aList.
	^aList.