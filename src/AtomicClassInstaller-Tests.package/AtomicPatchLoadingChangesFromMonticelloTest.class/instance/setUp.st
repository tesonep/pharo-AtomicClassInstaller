as yet unclassified
setUp
	self tearDown.
	mcRepo := MCDirectoryRepository new
		directory: self repoDirectory asFileReference;
		yourself.
		
	MCWorkingCopy announcer suspendAllWhile: [ (mcRepo versionFrom: self sourceVersion) load ].
