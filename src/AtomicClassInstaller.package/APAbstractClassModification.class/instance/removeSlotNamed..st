altering
removeSlotNamed: aName
	slots := slots reject:[:e | e slotName = aName].
