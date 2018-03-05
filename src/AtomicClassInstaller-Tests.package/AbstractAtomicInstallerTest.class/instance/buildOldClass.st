test class creation
buildOldClass
	Smalltalk classInstaller
		make: [ :builder | 
			builder
				name: #OldClass;
				slots: #(#firstVariable #secondVariable);
				category: 'AtomicClassInstaller-Tests' ].
	self oldClass
		compile:
			'
		firstVariable
			^firstVariable.
	'.
	self oldClass
		compile:
			'
		firstVariable: aValue
			firstVariable := aValue.
	'.
	self oldClass
		compile:
			'
		secondVariable
			^secondVariable.
	'.
	self oldClass
		compile:
			'
		secondVariable: aValue
			secondVariable := aValue.
	'