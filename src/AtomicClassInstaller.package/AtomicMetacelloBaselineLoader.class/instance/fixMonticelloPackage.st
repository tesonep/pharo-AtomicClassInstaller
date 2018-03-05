accessing
fixMonticelloPackage
	self mcVersions do:[:e | 
		e adopt.
		e workingCopy repositoryGroup addRepository: repository.
	]