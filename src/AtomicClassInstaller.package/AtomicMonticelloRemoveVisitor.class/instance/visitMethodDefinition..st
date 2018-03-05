visitor
visitMethodDefinition: aMethodDefinition 
	patch addOperation: (APRemoveMethod fromMCDefinition: aMethodDefinition)