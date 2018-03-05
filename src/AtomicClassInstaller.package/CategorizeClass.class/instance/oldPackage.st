accessing
oldPackage
	^ oldPackage
		ifNil: [ oldPackage := self packageOrganizer packageOf: modifiedClass  ]