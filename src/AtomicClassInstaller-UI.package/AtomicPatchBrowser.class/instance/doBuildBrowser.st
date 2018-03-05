as yet unclassified
doBuildBrowser
	browser := GLMTabulator new.
	browser column: #content.
	browser column: #detail.
	browser transmit
		to: #content;
		andShow: [ :builder | self contentsIn: builder ].
	browser transmit
		from:#content;
		to: #detail;
		andShow: [ :builder | self detailsIn: builder ].
