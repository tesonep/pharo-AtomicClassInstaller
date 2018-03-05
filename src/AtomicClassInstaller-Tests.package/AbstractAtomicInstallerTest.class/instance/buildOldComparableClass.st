test class creation
buildOldComparableClass
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #OldComparableClass;
				traitComposition: TComparable;
				slots: #(#firstVariable);
				category: 'AtomicClassInstaller-Tests' ]