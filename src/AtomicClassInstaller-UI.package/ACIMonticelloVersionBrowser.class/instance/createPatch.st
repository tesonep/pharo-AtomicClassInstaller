actions
createPatch
	| patch |
	patch := AtomicPatch fromMCVersions: selectedVersions .
	AtomicPatchBrowser openOn: patch.