as yet unclassified
migrateInstance: new fromOldInstance:old inNewEnv:newEnv fromOldEnv:oldEnv
	newEnvironment := newEnv.
	oldEnvironment := oldEnv.

	^ self block cull: new  cull: old cull: self.