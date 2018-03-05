running
tearDown
	self removeClassIfExists:#NewClassWithTrait.
	self removeClassIfExists:#OldComparableClass.
	self removeClassIfExists:#OldClass.
	self removeClassIfExists:#OtherClass.
	self removeClassIfExists:#OtherSubClass.	
	self removeClassIfExists:#SecondClass.	
	self removeClassIfExists: #ClassWithClassVariable.
	
	AtomicClassInstaller autocommit: true.

	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	super tearDown.
