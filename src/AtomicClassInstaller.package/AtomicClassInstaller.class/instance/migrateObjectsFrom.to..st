migrating
migrateObjectsFrom: oldClass to: newClass
	| oldInstances migrator |
	oldClass isTrait
		ifTrue: [ ^ #() ].
	newClass isMeta
		ifTrue: [ ^ #() ].

	((newClass isVariable = oldClass isVariable) and:[ (newClass instSize = oldClass instSize) 
		and:[ oldClass slots = newClass slots ]]) ifTrue:[^#()].	

	oldInstances := oldClass allInstances asArray.

	oldInstances isEmpty
		ifTrue: [ ^ #() ].	"no instances to convert"

	migrator := objectMigratorProvider objectMigratorFor: oldClass to: newClass.

	^ oldInstances
		collect: [ :old | old -> (self migrateSingleObject: old from: oldClass to: newClass using: migrator) ]