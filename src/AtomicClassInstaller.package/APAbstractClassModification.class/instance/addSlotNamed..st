altering
addSlotNamed: aName
	slots
		detect: [ :e | e slotName = aName asSymbol ]
		ifFound: [  ]
		ifNone: [ slots := slots copyWith: (APSlotDefinition newInstanceVariable: aName asSymbol) ]