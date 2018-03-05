instance creation
fromMCDefinition: mc
	^	self basicNew
		isMeta: mc classIsMeta;
		source: mc source; 
		category: mc category;
		selector: mc selector;
		modifiedClassName: mc className;
		timeStamp: mc timeStamp;
		initialize;
		yourself