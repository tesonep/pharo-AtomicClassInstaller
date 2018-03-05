utils
updateLayoutInSubClassesFrom: oldClass to: newClass
	| oldSlotScope newSlotScope |
	oldSlotScope := oldClass classLayout slotScope.
	newSlotScope := newClass classLayout slotScope.
	newClass
		subclassesDo: [ :e | 
			self assert: [ self isChangedClass: e ].
			self replaceSlotScope: oldSlotScope to: newSlotScope on: e.
			self
				assert: [ e classLayout checkIntegrity.
					true ] ]