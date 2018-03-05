migrating
objectMigratorFor: oldClass to: newClass
	^ transformations
		at: newClass name
		ifPresent: [ :v | 
			v isString
				ifTrue: [ ACIBlockObjectMigrator new blockCode: v ]
				ifFalse: [ v ] ]
		ifAbsent: [ ACIDefaultObjectMigrator new ]