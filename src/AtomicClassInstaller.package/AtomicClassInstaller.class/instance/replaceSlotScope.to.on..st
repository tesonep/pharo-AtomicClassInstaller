utils
replaceSlotScope: oldSlotScope to: newSlotScope on: aClass
	| slotScope |
	slotScope := aClass classLayout slotScope.
	slotScope hasParent
		ifTrue: [ slotScope parentScope: newSlotScope ]