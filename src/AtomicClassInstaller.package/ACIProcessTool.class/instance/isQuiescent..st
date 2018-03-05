querying processes
isQuiescent: aProcess
	"A process is quiescent if it is not the active and it does not activate any of the modified methods"

	aProcess isActiveProcess
		ifTrue: [ ^ false ].
	^ (aProcess suspendedContext
		callChainAnySatisfy:
			[ :ctx | modifiedMethods anySatisfy: [ :pair | ctx method selector = pair second and: [ ctx method methodClass name = pair first ] ] ])
		not