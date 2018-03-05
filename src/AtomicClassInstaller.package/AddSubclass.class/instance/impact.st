accessing
impact
	| changedPair newArray originalArray|
	self superclass isMeta ifTrue:[^self].
		
	changedPair := self installer getChangedPair: self superclass name.
	changedPair
		ifNotNil: [ 
			newArray := changedPair value subclasses reject: [ :e | e name = self modifiedClass name ].
			newArray := newArray copyWith: self modifiedClass.
			changedPair value subclasses: newArray ]
		ifNil: [ 
				originalArray := (self superclass instVarNamed:#subclasses).
				"If the originalArray is nil, I added a new array"
				originalArray ifNil:[
					originalArray := Array new.
					self superclass subclasses: originalArray.
				].
				
				newArray := self installer newObjectFor: originalArray.		
				newArray ifNil:[newArray := originalArray].
				newArray := newArray reject:[:e | e name = self modifiedClass name].
				newArray := newArray copyWith: modifiedClass.
				self installer storeOldObject: originalArray newObject: newArray. 
			]