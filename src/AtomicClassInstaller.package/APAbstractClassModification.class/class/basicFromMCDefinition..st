instance creation
basicFromMCDefinition: mcDefinition
	^ self basicNew
		definedClassName: mcDefinition className;
		superclassName: mcDefinition superclassName;
		slots: ((mcDefinition variables reject:#isClassVariable) collect:[:e | APSlotDefinition newInstanceVariable: e name]);
		sharedSlots: ((mcDefinition variables select:#isClassVariable) collect:[:e | APSlotDefinition newInstanceVariable: e name]);
		classSlots: ((mcDefinition variables select:#isClassInstanceVariable) collect:[:e | APSlotDefinition newInstanceVariable: e name]);
		sharedPools: mcDefinition sharedPoolsString;
		category: mcDefinition category;
		type: mcDefinition type;
		comment: mcDefinition comment;
		commentStamp: mcDefinition commentStamp;
		traitComposition: mcDefinition traitComposition;
		classTraitComposition: mcDefinition classTraitComposition