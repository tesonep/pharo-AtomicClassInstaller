querying processes
nonQuiescentProcess
	^self nonSystemProcesses reject:[:e | self isQuiescent: e].