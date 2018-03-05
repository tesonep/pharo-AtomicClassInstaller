accessing
assert: aValuable
	AtomicClassInstaller isAssertActive ifTrue:[
		super assert:aValuable description: aValuable asString .	
	]