instance creation
basicFromClass: aClass
	^ self basicNew
		definedClassName: aClass name;
		superclassName: (aClass superclass ifNotNil:#name);
		slots: (aClass slots collect:[:e | APSlotDefinition name: e name type: e class name]);
		sharedSlots: (aClass classPool associations collect:[:e | APSlotDefinition name: e key name type: #ClassVariable]);
		classSlots: (aClass class slots collect:[:e | APSlotDefinition name: e name type: e class name]);
		sharedPools: aClass sharedPoolsString;
		category: aClass category;
		type: aClass typeOfClass;
		comment: aClass organization comment;
		commentStamp: aClass organization commentStamp;
		traitComposition: aClass traitComposition asString;
		classTraitComposition: aClass class traitComposition asString