as yet unclassified
visitOrganizationDefinition: aOrganizationDefinition
	aOrganizationDefinition categories do: [ :e | patch addOperation: (APCreatePackage new package: e) ]