as yet unclassified
detailsIn: builder
	builder text
		title: [ :item | item asString ];
		display: [ :item | item asString ];
		when: [ :item | item isSymbol not ].

	builder text
		title: 'Pre-execution Script';
		display: [ patch preScript ifNil: '' ];
		when: [ :item | item = #preScript ].

	builder text
		title: 'Post-execution Script';
		display: [ patch postScript ifNil: '' ];
		when: [ :item | item = #postScript ]