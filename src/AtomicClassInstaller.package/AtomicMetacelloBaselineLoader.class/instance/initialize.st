initialization
initialize
	super initialize.
	
	metacello := Metacello new
		baseline: self baselineName ;
		repository: repositoryURI;
		fetch;
		yourself.
		
	baseline := Smalltalk globals at: ('BaselineOf' , baselineName) asSymbol.