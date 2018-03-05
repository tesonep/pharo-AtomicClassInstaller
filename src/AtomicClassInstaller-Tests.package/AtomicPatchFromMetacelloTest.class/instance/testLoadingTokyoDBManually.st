as yet unclassified
testLoadingTokyoDBManually
	| mcPatch |
	mcPatch := baselineLoader mcPatch.
	atomicPatch := baselineLoader atomicPatch.
	atomicPatch applyAll.

	self deny: (Smalltalk environment hasClassNamed: #TokyoLibrary).
	self deny: (Smalltalk environment hasClassNamed: #TokyoObject).

	AtomicClassInstaller commit.
	baselineLoader fixMonticelloPackage.

	self checkTokyoDB