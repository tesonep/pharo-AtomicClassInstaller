*AtomicClassInstaller
fromVersions: mcVersions
	| patches operations |
	patches := mcVersions collect: [ :e | e snapshot patchRelativeToBase: e package snapshot ].
	operations := (patches flatCollect: #operations) asSortedCollection.
	^ self operations: operations