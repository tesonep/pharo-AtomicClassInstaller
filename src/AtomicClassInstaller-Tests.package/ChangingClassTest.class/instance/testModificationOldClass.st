as yet unclassified
testModificationOldClass
	| class obj1 |
	obj1 := self oldClass new.
	obj1 firstVariable: 23.
	obj1 secondVariable: 17.
	
	class := AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #OldClass;
				slots: #(#firstVariable #secondVariable #thirdVariable);
				category: 'AtomicClassInstaller-Tests' ].
								
	self assert: self oldClass ~= class.
	self assert: self oldClass methods size equals: class methods size.
	self assert: (self oldClass methods allSatisfy: [ :mOld | class methods anySatisfy: [:mNew | mOld selector = mNew selector ]]).
	self assert: class superclass equals: self oldClass superclass.
	self assert: obj1 class = self oldClass.
	
	self compile: 'thirdVariable
			^ thirdVariable.
	' on:class.

	self compile: 'thirdVariable:value
			thirdVariable := value.
	' on:class.
	
	self assert: (self oldClass methods noneSatisfy: [:mOld | mOld selector = #thirdVariable ]).
	self assert: (self oldClass slots noneSatisfy: [:slot | slot name = #thirdVariable ]).
	self assert: (class methods anySatisfy: [:mOld | mOld selector = #thirdVariable ]).	
	self assert: (class slots anySatisfy: [:slot | slot name = #thirdVariable ]).		
	
	self assertNonAnnouncements.
	
	AtomicClassInstaller commit.

	self assert: (self oldClass methods anySatisfy: [:mOld | mOld selector = #thirdVariable ]).	
	self assert: (self oldClass slots anySatisfy: [:slot | slot name = #thirdVariable ]).		
			
	obj1 thirdVariable: 33. 
	self assert: obj1 thirdVariable = 33.
	
	self assert: obj1 firstVariable = 23.
	self assert:	 obj1 secondVariable = 17.