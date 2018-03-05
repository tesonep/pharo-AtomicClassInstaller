instance-creation
baseline: aBaselineName repository: aRepositoryURI
	^ self basicNew
			baselineName: aBaselineName;
			repositoryURI: aRepositoryURI;
			initialize;
			yourself.