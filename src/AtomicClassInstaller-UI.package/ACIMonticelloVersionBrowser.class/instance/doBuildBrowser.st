as yet unclassified
doBuildBrowser
	browser := GLMTabulator new.
	browser
		row: [ :r | 
			r column: #repositories.
			r column: #packages.
			r column: #versions ].
	browser row:#selectedVersions.
	browser row:#actions size:30.
	
	browser transmit
		to:#actions;
		andShow: [ :builder | builder actionList act:[self createPatch] entitled:'Create Patch'].

	browser transmit
		to: #repositories;
		andShow: [ :builder | self repositoriesIn: builder ].

	browser transmit
		to: #selectedVersions;
		andShow: [:builder | self selectedVersionsIn: builder].
		
	browser transmit
		from: #repositories;
		to: #packages;
		andShow: [ :builder | self packagesIn: builder ].
		
	browser transmit
		from: #repositories;
		from: #packages;
		to: #versions;
		andShow: [ :builder | self versionsIn: builder ].