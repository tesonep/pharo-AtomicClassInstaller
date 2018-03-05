accessing
classModificationFromRBClass: aRBClass
	^ modifiedClasses
		at: aRBClass name
		ifAbsentPut: [ APModifyClass
				fromRBClass:
					(aRBClass isMeta
						ifTrue: [ aRBClass theNonMetaClass ]
						ifFalse: [ aRBClass ]) ]