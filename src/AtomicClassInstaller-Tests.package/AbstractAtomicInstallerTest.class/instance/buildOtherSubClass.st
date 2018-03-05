test class creation
buildOtherSubClass
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #OtherSubClass;
				superclass: (builder classNamed:#OtherClass);
				slots: #();
				category: 'AtomicClassInstaller-Tests' ]