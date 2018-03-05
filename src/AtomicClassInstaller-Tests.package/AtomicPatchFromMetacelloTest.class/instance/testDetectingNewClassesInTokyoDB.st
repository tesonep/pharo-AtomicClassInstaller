as yet unclassified
testDetectingNewClassesInTokyoDB
	| mcPatch newClasses |
	mcPatch := baselineLoader mcPatch.
	atomicPatch := baselineLoader atomicPatch.
	newClasses := atomicPatch newClasses.

	self
		assertCollection: newClasses
		equals: #(#TokyoConstants #TokyoDatabaseTest #TokyoHashDatabase #TokyoLibrary #TokyoTestResource #TokyoDatabase #TokyoHashConstants #TokyoHashDatabaseTest #TokyoObject) asSet