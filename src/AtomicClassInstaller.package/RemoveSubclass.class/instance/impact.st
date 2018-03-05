as yet unclassified
impact
	| changedPair newArray originalArray|
	self superclass isMeta ifTrue:[^self].
		
	changedPair := self installer getChangedPair: self superclass name.
	changedPair
		ifNotNil: [ 
			newArray := changedPair value subclasses reject: [ :e | e name = self modifiedClass name ].
			changedPair value subclasses: newArray ]
		ifNil: [ 
				originalArray := (self superclass instVarNamed:#subclasses).
				newArray := self installer newObjectFor: originalArray .
				newArray ifNil:[newArray := originalArray].
				newArray := newArray reject:[:e | e name = self modifiedClass name].
				self installer storeOldObject: originalArray newObject: newArray. 
			]