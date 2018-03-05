visitor
visitClassDefinition: aDefinition 
	patch addOperation: (APModifyClass fromMCDefinition: aDefinition baseDefinition: baseDefinition)