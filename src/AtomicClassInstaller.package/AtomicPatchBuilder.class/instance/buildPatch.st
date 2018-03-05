building
buildPatch
	| patch |
	patch := AtomicPatch new
		addAll: operations;
		yourself.

	instanceMigrators
		keysAndValuesDo: [ :aClassName :migrator | patch whenMigrating: aClassName use: migrator ].

	^ patch