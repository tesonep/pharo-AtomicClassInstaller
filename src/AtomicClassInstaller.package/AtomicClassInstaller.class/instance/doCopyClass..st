utils
doCopyClass: oldClass
	| newClass |

	newClass := oldClass class copy new
		superclass: oldClass superclass;
		methodDict: oldClass methodDict copy;
		setFormat: oldClass format;
		setName: oldClass name;
		organization: oldClass organization copy;
		classPool: oldClass classPool copy;
		sharedPools: oldClass sharedPools copy.
		
	changedClasses at: newClass name put: oldClass -> newClass.
	changedClasses at: newClass class name put: oldClass class -> newClass class.			
		
	oldClass class instSize+1 to: oldClass class instSize do:
		[:offset | newClass instVarAt: offset put: (oldClass instVarAt: offset)].
	
	oldClass class allSlots do:[ :slot | slot write: (slot read:oldClass) to: newClass ].
	
	self copyLayoutFrom: oldClass to:newClass.
	
	newClass basicCategory: oldClass basicCategory.
	newClass environment: oldClass environment.
	newClass traitComposition: oldClass traitComposition.
	newClass subclasses: (oldClass subclasses collect:[:sc | self classAt: sc name. ]).
	newClass localSelectors: oldClass basicLocalSelectors copy.
	self updateLayoutInSubClassesFrom: oldClass to:newClass.
	
	^ newClass.