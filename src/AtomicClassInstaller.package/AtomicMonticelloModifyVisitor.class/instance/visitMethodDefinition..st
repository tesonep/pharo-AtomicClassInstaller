visitor
visitMethodDefinition: targetDefinition 
	| operation |
	operation := APModifyMethod fromMCDefinition: targetDefinition.
	operation originalMethodDefinition: (APAddMethod fromMCDefinition: baseDefinition ).
	patch addOperation: operation.