actions
doCommit	
	alreadyCommited ifTrue:[ self error:'It should have been reseted'].

	oldObjects := OrderedCollection new.
	newObjects := OrderedCollection new.
	objectsToMigrate := OrderedCollection new.
	
	[ 
		alreadyCommited := true.
		oldOrganizer := Smalltalk globals organization.
		newOrganizer := oldOrganizer copy.
		newOrganizer environment: newEnvironment.
	
		operations do:#impact.
		operations removeAll.

		changedClasses valuesDo: [ :a | |newClass oldClass|
			newClass := a value.
			oldClass := a key.
			
			oldObjects add: oldClass. 
			newObjects add: newClass.
						
			"I have to migrate the associations, so they are shared".
			newClass isMeta ifFalse:[
				newClass classPool associationsDo: [ :newAssoc |
					oldClass classPool associationAt: newAssoc key ifPresent: [ :oldAssoc | (newAssoc == oldAssoc) ifFalse:[oldObjects add: oldAssoc. newObjects add: newAssoc]]
				]
			].
			
			objectsToMigrate addAll:(self migrateObjectsFrom: a key to: a value). 
		 ].

		objectsToMigrate do:[ :a | 
			oldObjects add: a key. 
			newObjects add: a value.
		].
				
		oldObjects add:Smalltalk globals.
		newObjects add:newEnvironment.

		newEnvironment associationsDo:[:newAssoc | 
			Smalltalk globals	associationAt: newAssoc key ifPresent:[:oldAssoc | 
						(oldAssoc ~~ newAssoc) ifTrue:[
							oldObjects add:oldAssoc.
							newObjects add:newAssoc.
						]
				] 
		].

		oldObjects add:oldRPackageOrganizer.
		newObjects add:newRPackageOrganizer.

		oldObjects add:oldOrganizer.
		newObjects add:newOrganizer.
		
		oldObjects with:newObjects do:[ :a :b | self assert:[( a == b ) not]].
		self assert: [oldObjects allSatisfy: #isNotNil] .
		self assert: [newObjects allSatisfy: #isNotNil] .

		self assert: [oldObjects noneSatisfy: [:e | e class = SmallInteger]] .
		self assert: [newObjects noneSatisfy: [:e | e class = SmallInteger]] .
							
		CompiledMethod allInstancesDo: #flushCache.
				
		oldObjects asArray elementsForwardIdentityTo: newObjects asArray copyHash: true.

		removedClasses do: [ :e | e removeFromSystem ].
		 		
	] valueUnpreemptively.

self doAsserts.

changedClasses removeAll.
newClasses removeAll.
objectsToMigrate removeAll.
