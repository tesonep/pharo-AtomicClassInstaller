instance creation
empty
	^ self basicNew
		definedClassName: '';
		superclassName: #Object;
		slots: #();
		sharedSlots:#();
		classSlots: #();
		sharedPools: '';
		category: nil;
		type: #normal;
		comment: nil;
		commentStamp: nil;
		traitComposition: '{}';
		classTraitComposition: '{}'