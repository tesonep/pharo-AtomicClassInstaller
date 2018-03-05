accessing
isChangedClass: aClass
	^ (changedClasses at:aClass name) value == aClass.