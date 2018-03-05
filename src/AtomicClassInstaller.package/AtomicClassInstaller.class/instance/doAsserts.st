asserting
doAsserts
	self assert:[changedClasses values allSatisfy: [:kv | kv key == kv value ]].
	self assert:[Smalltalk garbageCollect. (changedClasses values collect:#key thenSelect:#isMeta) allSatisfy: [:e | e allInstances size = 1]].
	self assert:[(IdentitySet allSubInstances reject: #isHealthy) isEmpty ].