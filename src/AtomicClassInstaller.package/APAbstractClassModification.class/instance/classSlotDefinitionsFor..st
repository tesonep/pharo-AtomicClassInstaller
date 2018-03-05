as yet unclassified
classSlotDefinitionsFor:builder
	^ classSlots collect:[:e | e slotName asSymbol => (builder classNamed: e type asSymbol ) ]