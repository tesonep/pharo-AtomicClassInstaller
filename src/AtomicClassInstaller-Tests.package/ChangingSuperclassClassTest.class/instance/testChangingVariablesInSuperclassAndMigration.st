tests
testChangingVariablesInSuperclassAndMigration
	| obj |
	obj := self otherSubClass new.
	self assert: obj class instSize equals:0. 
	
	AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #OtherClass;
				superclass: (builder classNamed:#OldClass);
				slots: #(aVariable);
				category: 'AtomicClassInstaller-Tests' ].

	self assertNonAnnouncements.
	AtomicClassInstaller commit.
	
	self assert: obj class instSize equals:3.
	self assert: (obj instVarNamed: #aVariable) equals: nil.
