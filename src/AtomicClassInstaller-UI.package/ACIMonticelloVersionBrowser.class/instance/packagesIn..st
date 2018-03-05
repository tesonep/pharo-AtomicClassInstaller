as yet unclassified
packagesIn: builder
	builder fastList
		enableFilter;
		title:'Packages';
		display:[:repo | self allPackagesFrom:repo ];
		icon:[ Smalltalk ui icons iconNamed:#package ]
		