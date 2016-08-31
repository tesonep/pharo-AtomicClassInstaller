as yet unclassified
testChangeName
	| old new changeNameDifference |
	old := ShTestClassA asRingDefinition.
	new := ShTestClassB asRingDefinition.
	results := old compareTo: new.
	changeNameDifference := results
		detect: [ :e | e class = ShClassRename ]
		ifNone: [ self fail: 'It should have detected the change in the name' ].

	self assert: changeNameDifference oldName equals: #ShTestClassA.
	self assert: changeNameDifference newName equals: #ShTestClassB.