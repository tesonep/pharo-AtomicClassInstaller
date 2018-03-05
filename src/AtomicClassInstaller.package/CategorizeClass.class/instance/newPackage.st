accessing
newPackage
	^ newPackage
		ifNil: [ 
			newPackage := (self packageOrganizer packageMatchingExtensionName: newCategory)
				ifNil: [ self packageOrganizer registerPackage: (RPackage named: newCategory) ] ]