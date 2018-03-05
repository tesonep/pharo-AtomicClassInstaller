instance creation
newInstanceVariable: slotName 
	^ self basicNew
		slotName: slotName;
		type: #InstanceVariableSlot;
		initialize;
		yourself.