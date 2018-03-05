as yet unclassified
tearDown
	MCWorkingCopy announcer
		suspendAllWhile:
			[ (MCWorkingCopy forPackage: (MCPackage named: 'AtomicClassInstaller-Tests-Code')) unload ].

	(RPackageOrganizer default
		packageNamed: #'AtomicClassInstaller-Tests-Code'
		ifAbsent: [ nil ]) ifNotNil: [ :p | RPackageOrganizer default unregisterPackage: p ].

	(RPackageOrganizer default packageNamed: 'AtomicClassInstaller-Tests')
		classTagNamed: #Code
		ifPresent:
			[ :tag | 
			tag classes do: [ :e | tag removeClass: e ].
			tag removeFromPackage ].
	
	AtomicClassInstaller autocommit: true.
	super tearDown