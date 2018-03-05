as yet unclassified
allPackagesFrom: aRepo
	^ (aRepo packageDescriptionsFromReadableFileNames collect:#first) asSet asOrderedCollection 