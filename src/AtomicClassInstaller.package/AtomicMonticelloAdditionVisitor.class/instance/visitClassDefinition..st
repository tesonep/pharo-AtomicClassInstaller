as yet unclassified
visitClassDefinition: aClassDefinition
	patch
		addOperation:
			(aClassDefinition actualClass
				ifNil: [ APCreateClass fromMCDefinition: aClassDefinition ]
				ifNotNil: [ APModifyClass fromMCDefinition: aClassDefinition ])