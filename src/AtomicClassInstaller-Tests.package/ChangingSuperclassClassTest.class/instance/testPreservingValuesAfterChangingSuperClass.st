tests
testPreservingValuesAfterChangingSuperClass
	| class obj |
	obj := self secondClass new.
	obj aVariable: 42.
	self assert: obj class instSize equals: 1.
	self assert: (Object subclasses includes: self oldClass).

	class := AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #SecondClass;
				superclass: (builder classNamed:#OldClass);
				slots: #(aVariable);
				category: 'AtomicClassInstaller-Tests' ].

	self assertNonAnnouncements.						
	AtomicClassInstaller commit.
		
	self assert: obj class instSize equals: 3.
	self assert: obj aVariable equals: 42.
	
	obj firstVariable: 23.
	self assert: obj firstVariable equals: 23.