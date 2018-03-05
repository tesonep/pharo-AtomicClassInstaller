migrating
migrateChangedClassFrom: oldClass to:newClass
	| original |
	"This migration is only occured when an already changed class is changed, we are modifying the copies of the system. 
	The already changed class is different than the one in the old part of the changed class collection"

	original := (changedClasses at:newClass name) key.
	
	original ~~ oldClass ifTrue:[
		{ oldClass. oldClass class } elementsForwardIdentityTo: { newClass. newClass class } copyHash: true.		
	].	
