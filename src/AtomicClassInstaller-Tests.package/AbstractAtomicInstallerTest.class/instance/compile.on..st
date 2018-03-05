test class creation
compile: aSourceCode on:aClass
	SystemAnnouncer uniqueInstance suspendAllWhile: [ aClass compile: aSourceCode ].