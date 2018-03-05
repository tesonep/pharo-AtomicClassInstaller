as yet unclassified
apply
	^ [ AtomicClassInstaller
		make: [ :builder | 
			| superClass |
			superClass := superclassName == #nil
				ifFalse: [ builder classNamed: superclassName ].
			
			builder
				superclass: superClass;
				name: definedClassName;
				layoutClass: (ObjectLayout layoutForType: type);
				slots: (self slotDefinitionsFor: builder);
				sharedVariables: (sharedSlots collect:#slotName);
				sharedPools: self sharedPools;
				classSlots: (self classSlotDefinitionsFor: builder);
				traitComposition: self traitCompositionCompiled;
				classTraitComposition: self classTraitCompositionCompiled;
				comment: self comment stamp: self commentStamp;
				category: self category ] ]
		on: Warning , DuplicatedVariableError
		do: [ :ex | ex resume ]