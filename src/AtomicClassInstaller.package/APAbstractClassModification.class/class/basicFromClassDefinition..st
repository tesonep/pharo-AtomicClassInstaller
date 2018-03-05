instance creation
basicFromClassDefinition: aDefinition
	| source |
	source := RBAddClassChange definition: aDefinition.

	^ self basicNew
		definedClassName: source changeClassName asSymbol;
		superclassName: source superclassName;
		slots: (source instanceVariableNames collect:[:e | APSlotDefinition name: e type: #InstanceVariableSlot]);
		sharedSlots: (source classVariableNames collect:[:e | APSlotDefinition name: e type: #ClassVariable]);
		classSlots: #();
		sharedPools: (source sharedPoolNames joinUsing: ' ');
		category: source category;
		type: #normal;
		comment: nil;
		commentStamp: nil;
		traitComposition: '{}';
		classTraitComposition: '{}'	