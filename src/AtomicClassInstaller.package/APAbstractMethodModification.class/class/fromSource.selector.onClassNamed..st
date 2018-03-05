instance creation
fromSource: source selector: selector onClassNamed: aClassName
	^	self basicNew
		isMeta: false;
		source: source; 
		category: #Unclassified;
		selector: selector;
		modifiedClassName: aClassName;
		timeStamp: nil;
		initialize;
		yourself