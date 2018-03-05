as yet unclassified
testLoadPatchWithProcessAlive
	| mcVersion patch loader users process errors |
	users := OrderedCollection new.
	errors := 0.

	1 to: 50 do: [ :idx | 
		| u f l |
		u := self aciUser new.
		f := String loremIpsum: 7 atRandom + 3.
		l := String loremIpsum: 7 atRandom + 3.
		u firstname: f.
		u lastname: l.
		users
			add:
				{u.
				(f , ' ' , l)} ].

	process := [ [ true ]
		whileTrue: [ 
			users
				do: [ :pair | | nf nl |
					pair first fullName = pair second
						ifFalse: [ errors := errors + 1 ].
					nf := String loremIpsum: 7 atRandom + 3.
					nl := String loremIpsum: 7 atRandom + 3.
					pair first firstname: nf.
					pair first lastname: nl.
					pair at:2 put: (nf , ' ' , nl).
					].
			Processor yield 
		] ] fork.

	mcVersion := mcRepo versionFrom: self targetVersion.
	patch := AtomicPatch fromMCVersions: {mcVersion}.

	patch
		whenMigrating: #ACIUser
		use: [ :new :old :migrator | 
			migrator basicMigrateInstance: new from: old.
			new buildFullname ].

	loader := AtomicLoader new.
	loader loadPatch: patch.

	(Delay forSeconds: 3) wait.
	process terminate.

	self assert: errors equals: 0