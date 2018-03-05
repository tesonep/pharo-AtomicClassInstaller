instance creation
fromMCDefinition: mcDefinition
	^	(self basicFromMCDefinition: mcDefinition)  	
		initialize;
		yourself