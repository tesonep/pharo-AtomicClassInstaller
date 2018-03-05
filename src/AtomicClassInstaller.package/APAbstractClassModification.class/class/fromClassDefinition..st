instance creation
fromClassDefinition: aDefinition
	^	(self basicFromClassDefinition: aDefinition)  	
		initialize;
		yourself