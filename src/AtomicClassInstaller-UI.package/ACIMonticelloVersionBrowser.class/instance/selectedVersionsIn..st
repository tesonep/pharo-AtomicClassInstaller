as yet unclassified
selectedVersionsIn: builder
	builder fastList
		enableFilter;
		title: 'Selected Versions';
		display: [ selectedVersions asOrderedCollection ];
		format: [ :item | item info name ];
		icon: [ Smalltalk ui icons iconNamed: #monticelloPackage ];
		updateOn: ACISelectedVersionsUpdate from: self announcer.