as yet unclassified
testDetectingRemovedClassesInTokyoDB
	| mcPatch removedClasses |
	mcPatch := baselineLoader mcPatch.
	atomicPatch := baselineLoader atomicPatch.
	removedClasses := atomicPatch removedClasses.

	self
		assertCollection: removedClasses
		equals: #() asSet