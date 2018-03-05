building
whenMigrating: aClassName use: migrator
	instanceMigrators at: aClassName put: migrator
	