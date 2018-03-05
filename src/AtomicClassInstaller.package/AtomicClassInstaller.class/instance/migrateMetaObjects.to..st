migrating
migrateMetaObjects: oldClass to: newClass
	| oldInstances variable instSize newInstances result |
	
	oldInstances := oldClass allInstances.
	newInstances := newClass allInstances.
		 	
	oldInstances isEmpty ifTrue: [ ^ #() ].	"no instances to convert"
			
	variable := newClass isVariable.
	instSize := newClass instSize.	
	
	(((variable = oldClass isVariable) and:[ instSize = oldClass instSize ]) 
		and:[ oldClass slots = newClass slots ]) ifTrue:[^self].
			
	result := Array new: oldInstances size.
	
	1 to: oldInstances size do: [ :i | | old new | 
		old := oldInstances at: i.
		new := newClass newInstanceFrom: (oldInstances at: i) variable: variable size: instSize.
		result at: i put: new 
	].	
	
	oldInstances elementsForwardIdentityTo: result copyHash:true. 
