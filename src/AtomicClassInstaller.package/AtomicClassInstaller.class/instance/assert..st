asserting
assert: aValuable
	self isAssertActive
		ifTrue: [ ^ super assert: aValuable ]