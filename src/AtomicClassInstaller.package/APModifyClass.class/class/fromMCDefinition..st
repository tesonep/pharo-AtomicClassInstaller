as yet unclassified
fromMCDefinition: mcDefinition
	^ (self basicFromMCDefinition: mcDefinition)
		originalClassDefinition: (APCreateClass fromMCDefinition: mcDefinition actualClass asClassDefinition);
		initialize;
		yourself