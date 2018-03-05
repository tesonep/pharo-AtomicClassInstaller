as yet unclassified
initialize
	| icons | 
	super initialize.
	
	icons := Smalltalk ui icons.
	
	labels := {
		#preScript -> {'Pre-Execution Script'.  icons iconNamed: #glamorousBrowse}.
		#postScript -> {'Post-Execution Script'. icons iconNamed: #glamorousBrowse}.
		#transformations -> {'Transformations'. icons iconNamed: #glamorousRefresh}.
		#operations -> {'Operations'. icons iconNamed: #glamorousSpawn}
		} asDictionary