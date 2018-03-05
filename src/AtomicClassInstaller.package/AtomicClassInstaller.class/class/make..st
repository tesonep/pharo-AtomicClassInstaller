as yet unclassified
make: aBlock
	| builder result announcements |
	Autocommit ifNil: [ Autocommit := true ].
	self autocommit ifTrue: [ self reset ].
	
	self uniqueInstance storedAnnouncements addAll:(SystemAnnouncer uniqueInstance
		suspendAllWhileStoring: [ 
			builder := self uniqueInstance builder.
			aBlock value: builder.
			result := builder build 
		]).
	
	self autocommit ifTrue: [ self commit ].
	^ result