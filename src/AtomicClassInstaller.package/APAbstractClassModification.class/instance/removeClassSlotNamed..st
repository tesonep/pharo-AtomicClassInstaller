altering
removeClassSlotNamed: aName
	sharedSlots := sharedSlots reject:[:e | e slotName = aName].
