instance creation
fromRBClass: aRBClass
	^	(self basicFromRBClass: aRBClass)  	
		initialize;
		yourself