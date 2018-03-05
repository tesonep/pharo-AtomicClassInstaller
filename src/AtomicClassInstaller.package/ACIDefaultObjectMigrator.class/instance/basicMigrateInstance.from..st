migration
basicMigrateInstance: new from: old
	"Slot migration happens there"

	new class allSlots do: [ :newSlot | old class slotNamed: newSlot name ifFound: [ :oldSlot | newSlot write: (oldSlot read: old) to: new ] ].

	new class isVariable
		ifTrue: [ 1 to: old basicSize do: [ :offset | new basicAt: offset put: (old basicAt: offset) ] ].
	
	^ new