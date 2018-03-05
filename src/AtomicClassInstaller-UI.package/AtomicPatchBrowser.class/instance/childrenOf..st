as yet unclassified
childrenOf: aValue
	aValue = #operations
		ifTrue: [ ^ self patch operations ].

	aValue = #transformations
		ifTrue: [ ^ self patch transformations ].
	
	^#()	