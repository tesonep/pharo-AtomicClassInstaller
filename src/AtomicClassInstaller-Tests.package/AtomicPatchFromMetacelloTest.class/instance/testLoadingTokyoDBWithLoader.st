as yet unclassified
testLoadingTokyoDBWithLoader
	self deny: (Smalltalk environment hasClassNamed: #TokyoLibrary).
	self deny: (Smalltalk environment hasClassNamed: #TokyoObject).
	baselineLoader loadPatch.
	self checkTokyoDB.
