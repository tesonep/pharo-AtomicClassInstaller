accessing
modifiedClassName
	isMeta ifTrue:[
		^ modifiedClassName , ' class'
	].
	^ modifiedClassName