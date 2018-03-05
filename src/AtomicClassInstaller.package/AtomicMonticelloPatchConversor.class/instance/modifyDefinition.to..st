visitor
modifyDefinition: baseDefinition to: targetDefinition
	modifyVisitor baseDefinition: baseDefinition.
	targetDefinition accept: modifyVisitor .