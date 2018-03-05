as yet unclassified
testNewClassWithTrait
	| class |

	self assert: (TComparable users noneSatisfy: [ :e | e name = #NewClassWithTrait]) .

	class := AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #NewClassWithTrait;
				traitComposition: TComparable;
				slots: #();
				category: 'AtomicClassInstaller-Tests' ].
	
	self assert: (TComparable users noneSatisfy: [ :e | e name = #NewClassWithTrait]).
	self deny: (Object subclasses includes: class).
	self deny: (self environment includesKey: #NewClassWithTrait).
	
	self assertNonAnnouncements.
	
	AtomicClassInstaller commit.
	
	self assert: (TComparable users includes: self newClassWithTrait) .
	self assert: (self newClassWithTrait canUnderstand: #max:).
	self assert: (self newClassWithTrait canUnderstand: #min:).	
	self assert: (Object subclasses includes: self newClassWithTrait).
