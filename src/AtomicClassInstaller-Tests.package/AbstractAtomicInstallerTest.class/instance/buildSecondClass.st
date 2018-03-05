test class creation
buildSecondClass
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #SecondClass;
				slots: #(aVariable);
				category: 'AtomicClassInstaller-Tests' ].
			
	self secondClass
		compile:
			'
		aVariable
			^aVariable.
	'.
	self secondClass
		compile:
			'
		aVariable: aValue
			aVariable := aValue.
	'.
