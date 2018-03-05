as yet unclassified
loadPatch: aPatch
	patch := aPatch.

	AtomicClassInstaller reset.
	AtomicClassInstaller autocommit: false.

	AtomicClassInstaller uniqueInstance objectMigratorProvider: patch.

	processTool addAllModifiedMethod: aPatch modifiedMethods.

	[ processTool waitAllQuiescent.
	patch applyAll.
	AtomicClassInstaller commit ] valueUnpreemptively