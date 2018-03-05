as yet unclassified
versionsIn: builder
	builder fastList
		enableFilter;
		title: 'Versions';
		act: [ :panel | self addSelectedVersion: panel ] icon: (Smalltalk ui icons iconNamed: #add) entitled: 'Add';
		display: [ :repo :package | repo allVersionNames select: [ :e | (e findString: package) = 1 ] ];
		icon: [ Smalltalk ui icons iconNamed: #monticelloPackage ]