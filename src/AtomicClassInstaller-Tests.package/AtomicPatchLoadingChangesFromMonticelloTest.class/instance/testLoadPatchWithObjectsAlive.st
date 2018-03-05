as yet unclassified
testLoadPatchWithObjectsAlive
	| mcVersion patch loader usr1 usr2 |
	usr1 := self aciUser new.
	usr1 firstname: 'Pepe'.
	usr1 lastname: 'Argento'.

	usr2 := self aciUser new.
	usr2 firstname: 'Coqui'.
	usr2 lastname: 'Argento'.

	self assert: usr1 firstname equals: 'Pepe'.
	self assert: usr1 lastname equals: 'Argento'.
	self assert: usr1 fullName equals: 'Pepe Argento'.
	self assert: usr2 fullName equals: 'Coqui Argento'.

	mcVersion := mcRepo versionFrom: self targetVersion.
	patch := AtomicPatch fromMCVersions: {mcVersion}.

	patch
		whenMigrating: #ACIUser
		use: [ :new :old :migrator | 
			migrator basicMigrateInstance: new from: old.
			new buildFullname ].

	loader := AtomicLoader new.
	loader loadPatch: patch.

	self assert: usr1 firstname equals: 'Pepe'.
	self assert: usr1 lastname equals: 'Argento'.	
	self assert: usr1 fullName equals: 'Pepe Argento'.
	self assert: usr2 fullName equals: 'Coqui Argento'