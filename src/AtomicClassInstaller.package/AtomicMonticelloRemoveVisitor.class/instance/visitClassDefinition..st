as yet unclassified
visitClassDefinition: aClassDefinition
	patch addOperation: (APRemoveClass fromMCDefinition: aClassDefinition)