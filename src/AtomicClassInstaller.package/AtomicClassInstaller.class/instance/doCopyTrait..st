utils
doCopyTrait: oldTrait
	| newTrait |
	newTrait := oldTrait copy.
	changedClasses at: newTrait name put: oldTrait -> newTrait.
	changedClasses at: newTrait class name put: oldTrait class -> newTrait class.			
	^ newTrait
