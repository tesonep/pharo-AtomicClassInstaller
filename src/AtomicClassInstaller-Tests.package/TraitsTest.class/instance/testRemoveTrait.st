as yet unclassified
testRemoveTrait
	| class |

	self assert: (TComparable users includes: self oldComparableClass) .
	self assert: (self oldComparableClass canUnderstand: #max:).
	self assert: (self oldComparableClass canUnderstand: #min:).	

	class := AtomicClassInstaller
		make: [ :builder | 
			builder
				name: #OldComparableClass;
				traitComposition: { };
				slots: #(firstVariable);
				category: 'AtomicClassInstaller-Tests' ].
	
	self assert: (TComparable users includes: self oldComparableClass) .
	self assert: (self oldComparableClass canUnderstand: #max:).
	self assert: (self oldComparableClass canUnderstand: #min:).	
	self deny: (Object subclasses includes: class).
	
	self assertNonAnnouncements.
		
	AtomicClassInstaller commit.
	
	self deny: (TComparable users includes: self oldComparableClass) .
	self deny: (self oldComparableClass canUnderstand: #max:).
	self deny: (self oldComparableClass canUnderstand: #min:).	
	self assert: (Object subclasses includes: class).
