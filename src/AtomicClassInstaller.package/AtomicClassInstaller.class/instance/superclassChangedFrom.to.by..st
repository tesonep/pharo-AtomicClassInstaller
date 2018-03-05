notifications
superclassChangedFrom: oldClass to: newClass by: classModification 
	AddSubclass for:self class: newClass superclass: newClass superclass.
	RemoveSubclass for:self class: newClass superclass: oldClass superclass.
	
