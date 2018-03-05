instance creation
basicFromRBClass: aClass
	^ self basicNew
		definedClassName: aClass name;
		superclassName: (aClass superclass ifNotNil:#name);
		slots: (aClass instanceVariableNames collect:[:e | APSlotDefinition name: e type: #InstanceVariableSlot]);
		sharedSlots: (aClass classVariableNames collect:[:e | APSlotDefinition name: e type: #ClassVariable]);
		classSlots: (aClass theMetaClass instanceVariableNames collect:[:e | APSlotDefinition name: e type: #InstanceVariableSlot]);
		sharedPools: (aClass sharedPoolNames joinUsing: ' ');
		category: aClass category;
		type: #normal;
		comment: aClass comment;
		commentStamp: nil;
		traitComposition: '{}';
		classTraitComposition: '{}'