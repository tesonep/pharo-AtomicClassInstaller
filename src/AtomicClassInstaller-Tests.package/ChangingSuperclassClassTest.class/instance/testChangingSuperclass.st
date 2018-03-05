tests
testChangingSuperclass
	| class obj |
	obj := self otherClass new.
	self assert: obj class instSize equals: 0.
	self assert: (Object subclasses includes: self oldClass).

	class := AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #OtherClass;
				superclass: (builder classNamed:#OldClass);
				slots: #();
				category: 'AtomicClassInstaller-Tests' ].
					
	self assert: self otherClass ~= class.
	self assert: self otherClass methods size equals: class methods size.
	self assert: (self otherClass methods allSatisfy: [ :mOld | class methods anySatisfy: [:mNew | mOld selector = mNew selector ]]).
	self assert: class superclass name equals: #OldClass.
	self deny: (self oldClass subclasses includes: class).
	self assert: (Object subclasses includes: self oldClass).
	
	self assertNonAnnouncements.
	AtomicClassInstaller commit.
		
	self assert: self otherClass equals: class.
	self assert: self otherClass superclass equals: self oldClass.
	self assert: (self oldClass subclasses includes: self otherClass).
	self deny: (Object subclasses includes: self otherClass).
	
	self assert: obj class instSize equals: 2.
