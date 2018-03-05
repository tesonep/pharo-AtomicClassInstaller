as yet unclassified
testDetectingModyfiedClassesInTokyoDB
	| mcPatch modifiedClasses |
	mcPatch := baselineLoader mcPatch.
	atomicPatch := baselineLoader atomicPatch.
	modifiedClasses := atomicPatch modifiedClasses.
	self assertCollection: modifiedClasses equals: #() asSet