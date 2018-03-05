as yet unclassified
iconFor: aValue
	aValue isSymbol ifFalse: [ ^aValue icon ].
	^ (labels at:aValue) second.