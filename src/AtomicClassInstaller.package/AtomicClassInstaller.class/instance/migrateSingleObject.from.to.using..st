migrating
migrateSingleObject: old from: oldClass to: newClass using: objectMigrator
	| new |
	newClass isVariable
		ifTrue: [ new := newClass basicNew: old basicSize ]
		ifFalse: [ new := newClass basicNew ].

	^ objectMigrator migrateInstance: new fromOldInstance:old inNewEnv: newEnvironment fromOldEnv: self oldEnvironment.