notifications
classDefinitionChangedFrom: oldClass to: newClass by: classModification		
	changedClasses at: newClass name put: (changedClasses at: newClass name) key -> newClass.

	newClass isMeta
		ifTrue: [ changedClasses at: newClass baseClass name put: (changedClasses at: newClass baseClass name) key -> newClass baseClass ]
		ifFalse: [ changedClasses at: newClass class name put: (changedClasses at: newClass class name) key -> newClass class ].
	
	newClass isMeta ifTrue:[self migrateMetaObjects: oldClass to: newClass ].
	
	newClass isMeta ifFalse:[ self atEnvironment:newClass name put: newClass ].
	
	self
		copyMethodsFrom: oldClass to: newClass using: classModification;
		basicClassDefinitionChangedFrom: oldClass to: newClass using: classModification.