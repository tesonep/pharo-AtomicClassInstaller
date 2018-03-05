as yet unclassified
displayFor: aValue
	aValue isSymbol ifFalse: [ ^aValue displayString ].
	^ (labels at:aValue) first.