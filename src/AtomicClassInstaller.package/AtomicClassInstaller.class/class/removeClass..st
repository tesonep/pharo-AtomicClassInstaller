removing
removeClass: aClass
	Autocommit ifNil: [ Autocommit := true ].
	self autocommit ifTrue: [ self reset ].
	
	self uniqueInstance removeClass: aClass.
	
	self autocommit ifTrue: [ self commit ].
	