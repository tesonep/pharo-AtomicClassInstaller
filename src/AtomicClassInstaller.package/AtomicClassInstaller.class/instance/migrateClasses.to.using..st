migrating
migrateClasses: aCollectionOfOldClasses to: aCollectionOfNewClasses using: anInstanceModification
	self assert: [ changedClasses keys includesAll: (aCollectionOfOldClasses collect: #name) ].
	aCollectionOfOldClasses with: aCollectionOfNewClasses do: [ :old :new | self migrateChangedClassFrom: old to: new ].
	
	self assert:[((changedClasses values select:[:e | e key isMeta]) allSatisfy:[:e | e key allInstances size = 1] )].
