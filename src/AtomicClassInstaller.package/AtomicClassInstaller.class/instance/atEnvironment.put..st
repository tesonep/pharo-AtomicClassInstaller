accessing
atEnvironment: aName put: aValue
	| newAssoc oldAssoc |
	newAssoc := newEnvironment
		associationAt: aName
		ifAbsent: [ newEnvironment at: aName put: aValue.
			^ aValue ].

	oldAssoc := Smalltalk globals associationAt: aName.

	newAssoc ~~ oldAssoc
		ifTrue: [ ^ newEnvironment at: aName put: aValue ]
		ifFalse: [ newEnvironment removeKey: aName.
			newEnvironment at: aName put: aValue.
			self assert: [(newEnvironment associationAt: aName) ~~ oldAssoc].
			^ aValue ]