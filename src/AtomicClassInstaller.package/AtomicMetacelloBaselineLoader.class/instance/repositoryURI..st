accessing
repositoryURI: aRepositoryURI
	repositoryURI := aRepositoryURI.
	self repository: (MCRepository fromUrl: aRepositoryURI).