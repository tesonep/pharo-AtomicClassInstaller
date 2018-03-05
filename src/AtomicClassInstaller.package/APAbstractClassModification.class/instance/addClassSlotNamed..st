altering
addClassSlotNamed: aName
	sharedSlots := sharedSlots copyWith: (APSlotDefinition name: aName type: #ClassVariable).
