as yet unclassified
testModificationOldClassWithoutMigrator
	| obj1 patch loader |
	obj1 := self oldClass new.
	obj1 firstVariable: 23.
	obj1 secondVariable: 17.

	loader := AtomicLoader new.
	patch := AtomicPatch new.

	patch
		addOperation:
			(self
				createModifyClass: #OldClass
				slots: #(#firstVariable #secondVariable #thirdVariable)
				from: (self createAddClass: #OldClass slots: #(#firstVariable #secondVariable))).
	patch
		addOperation:
			(self
				createAddMethod: #thirdVariable
				on: #OldClass
				source: 'thirdVariable ^ thirdVariable').
	patch
		addOperation:
			(self
				createAddMethod: #thirdVariable:
				on: #OldClass
				source: 'thirdVariable:aValue  thirdVariable:=aValue').

	loader loadPatch: patch.

	obj1 thirdVariable: 33.
	self assert: obj1 thirdVariable = 33.

	self assert: obj1 firstVariable = 23.
	self assert: obj1 secondVariable = 17