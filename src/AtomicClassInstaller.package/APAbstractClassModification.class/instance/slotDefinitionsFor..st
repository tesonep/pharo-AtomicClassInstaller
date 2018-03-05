as yet unclassified
slotDefinitionsFor:builder
	^ slots collect:[:e | e slotName asSymbol => (builder classNamed: e type asSymbol ) ]