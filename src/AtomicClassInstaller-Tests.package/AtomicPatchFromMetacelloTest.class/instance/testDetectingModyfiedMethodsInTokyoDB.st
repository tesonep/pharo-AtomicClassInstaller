tests
testDetectingModyfiedMethodsInTokyoDB
	| mcPatch modifiedMethods |
	mcPatch := baselineLoader mcPatch.
	atomicPatch := baselineLoader atomicPatch.
	modifiedMethods := atomicPatch modifiedMethods.
	
	self assert: modifiedMethods size equals: 105.
	self assert: (modifiedMethods includes: #(TokyoLibrary unixModuleName)).
	self assert: (modifiedMethods includes: #('TokyoObject class' object:size:)).