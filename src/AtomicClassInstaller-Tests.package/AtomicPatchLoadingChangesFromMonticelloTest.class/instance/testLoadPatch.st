as yet unclassified
testLoadPatch
	| mcVersion patch loader |

	self assert: self aciUser allSlots size equals: 3.
	self deny: (self aciUser allSlots anySatisfy:[:s | s name = #fullname]). 

	mcVersion := mcRepo versionFrom: self targetVersion.
	patch := AtomicPatch fromMCVersions: {mcVersion}.
	loader := AtomicLoader new.
	loader loadPatch: patch.
	
	self assert: self aciUser allSlots size equals: 4.
	self assert: (self aciUser allSlots anySatisfy:[:s | s name = #fullname]). 	