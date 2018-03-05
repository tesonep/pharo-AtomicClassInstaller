instance creation
fromClass: aClass
	^	(self basicFromClass: aClass)  	
		initialize;
		yourself