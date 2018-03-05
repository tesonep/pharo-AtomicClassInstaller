as yet unclassified
contentsIn: builder
	builder fastTree
		title: 'Patch Content';
		children: [ :item | self childrenOf: item];
		format: [:item | self displayFor: item];
		icon: [ :item | self iconFor: item ]