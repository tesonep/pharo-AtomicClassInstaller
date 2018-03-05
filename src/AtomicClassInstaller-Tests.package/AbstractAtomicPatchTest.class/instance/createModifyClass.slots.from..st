as yet unclassified
createModifyClass: aClassName slots: slots from: originalDefinition
	^ APModifyClass new
		definedClassName: aClassName;
		superclassName: #Object;
		slots: (slots collect: [ :e | APSlotDefinition newInstanceVariable: e ]);
		sharedSlots: #();
		classSlots: #();
		sharedPools: '';
		category: 'AtomicClassInstaller-Tests';
		type: #normal;
		comment: nil;
		commentStamp: nil;
		traitComposition: '{}';
		classTraitComposition: '{}';
		originalClassDefinition: originalDefinition