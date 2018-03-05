as yet unclassified
checkTokyoDB
	| testClasses suite result |
	
	"I will assert that the TokyoDB library is corrected loaded, by running its tests"
	
	self assert: (Smalltalk environment hasClassNamed: #TokyoLibrary).
	self assert: (Smalltalk environment hasClassNamed: #TokyoObject).
	self
		assert:
			((Smalltalk environment at: #TokyoLibrary) methodDict
				includesKey: #unixModuleName).

	"Now I run the tests of TokyoDB to see if everything is ok"
	suite := TestSuite new.
	testClasses := (RPackage organizer packageNamed: 'TokyoDB')
		definedClasses
		select: [ :e | (e includesBehavior: TestCase) and: [ e isAbstract not ] ].
	testClasses do: [ :e | e addToSuiteFromSelectors: suite ].
	result := suite run.
	self assert: result errors size equals: 0.
	self assert: result failures size equals: 0.
	
	" Force the collection of the handle of the database"
	Smalltalk garbageCollectMost.
