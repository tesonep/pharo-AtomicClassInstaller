querying processes
nonSystemProcesses
	^ Process allInstances reject:[:e | e isTerminated or:[e suspendedContext isNil or: [self isSystemProcess:e]]].