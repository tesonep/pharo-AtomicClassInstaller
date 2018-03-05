utils
copyClass: oldClassOrTrait
	^ oldClassOrTrait isTrait
		ifTrue: [ self doCopyTrait: oldClassOrTrait ]
		ifFalse: [ self doCopyClass: oldClassOrTrait ]