as yet unclassified
fromMCDefinition: mcDefinition baseDefinition: mcBaseDefinition
	^ (self basicFromMCDefinition: mcDefinition)
		originalClassDefinition: (APCreateClass fromMCDefinition: mcBaseDefinition);
		initialize;
		yourself