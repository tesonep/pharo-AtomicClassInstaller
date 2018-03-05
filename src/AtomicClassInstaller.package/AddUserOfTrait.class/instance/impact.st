traits
impact
	| changedPair newSet |
	changedPair := self installer getChangedPair: self modifiedTrait name.
	changedPair
		ifNotNil: [ 
			newSet := changedPair value users reject: [ :e | e name = self modifiedClass name ].
			newSet add: self modifiedClass.
			changedPair value users: newSet ]
		ifNil: [ 
				newSet := self installer newObjectFor: self modifiedTrait users.
				newSet ifNil:[newSet := self modifiedTrait users].
				newSet := newSet reject: [ :e | e name = self modifiedClass name ].
				newSet add: self modifiedClass.
				self installer storeOldObject: self modifiedTrait users newObject: newSet. 
			]