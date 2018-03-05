test class creation
buildOtherClass
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #OtherClass;
				slots: #();
				category: 'AtomicClassInstaller-Tests' ]