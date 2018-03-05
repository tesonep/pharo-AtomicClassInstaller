accessing
classModificationFromDefinition: aDefinition
	| modifyClass |
	modifyClass := APModifyClass fromClassDefinition: aDefinition.
	^modifiedClasses at: modifyClass definedClassName ifAbsentPut:modifyClass.