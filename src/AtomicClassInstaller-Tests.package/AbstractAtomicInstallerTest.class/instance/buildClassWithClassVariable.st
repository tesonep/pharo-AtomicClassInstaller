test class creation
buildClassWithClassVariable
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #ClassWithClassVariable;
				traitComposition: {};
				slots: #();
				classSlots: #(classVariable);
				category: 'AtomicClassInstaller-Tests' ].
			
	self classWithClassVariable class compile:'
		classVariable
			^classVariable.
	'.
	
	self classWithClassVariable class compile:'
		classVariable:aValue
			classVariable := aValue.
	'.