querying processes
isSystemProcess: aProcess
	^ aProcess suspendedContext callChainAnySatisfy: [ :e | self systemProcessMethods anySatisfy: [ :x | e method selector = x value and: [ e methodClass name = x key ] ] ]