as yet unclassified
tearDown
	baselineLoader baseline unload.
	baselineLoader metacello unregister.

	(RPackageOrganizer default packageNamed: 'TokyoDB-Tests' ifAbsent:[nil]) ifNotNil:[ :pck |
		pck classes do:#removeFromSystem.
		RPackageOrganizer default unregisterPackage: pck
	].

	(MCWorkingCopy forPackage: (MCPackage named: 'TokyoDB-Tests')) unload .


	(RPackageOrganizer default packageNamed: 'TokyoDB' ifAbsent:[nil]) ifNotNil:[ :pck |
		pck classes do:#removeFromSystem.
		RPackageOrganizer default unregisterPackage: pck
	].

	(MCWorkingCopy forPackage: (MCPackage named: 'TokyoDB')) unload .

	AtomicClassInstaller autocommit: true.
	super tearDown