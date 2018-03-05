initialization
initialize
	super initialize.
	innerClassInstaller := PharoClassInstaller new.
	changedClasses := Dictionary new.
	newClasses := OrderedCollection new.
	operations := OrderedCollection new.
	alreadyCommited := false.
	storedAnnouncements := OrderedCollection new.
	removedClasses := OrderedCollection new.
	
	objectMigratorProvider := ACIDefaultObjectMigratorProvider new.
	
	oldRPackageOrganizer := self class packageOrganizer.
	newRPackageOrganizer := self class packageOrganizer copy.

" I initialize the newEnvironment with the same associations (identicals), after if we changed them a new one is put in the new environment."
	newEnvironment := Smalltalk globals shallowCopy. 
	newEnvironment instVarNamed: #array  put: (newEnvironment array) copy.
