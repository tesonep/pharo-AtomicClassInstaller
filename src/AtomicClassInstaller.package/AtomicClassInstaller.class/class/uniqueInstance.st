as yet unclassified
uniqueInstance
	^ uniqueInstance ifNil:[ uniqueInstance := self basicNew initialize; yourself.]