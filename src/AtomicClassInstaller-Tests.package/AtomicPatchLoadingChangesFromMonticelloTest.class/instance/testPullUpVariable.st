as yet unclassified
testPullUpVariable
	| mcVersion patch loader objects |
	
	objects := OrderedCollection new.
	
	1 to: 100 do: [ :index | |o|
		o := self aciSubclass new.
		o anAtribute: 100 atRandom.
		o anotherAtribute: 100 atRandom.
		objects add:{o. o someMessage}.
	].

	mcVersion := mcRepo versionFrom: self targetVersion.
	patch := AtomicPatch fromMCVersions: {mcVersion}.
	loader := AtomicLoader new.

	loader loadPatch: patch.
	
	objects do:[:e | self assert: e second equals: e first someMessage].