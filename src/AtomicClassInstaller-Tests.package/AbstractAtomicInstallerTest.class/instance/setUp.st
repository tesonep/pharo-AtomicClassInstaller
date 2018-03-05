running
setUp
	super setUp.

	receivedAnnouncements := OrderedCollection new.
	
	AtomicClassInstaller reset.
	
	self buildOldClass.
	self buildOldComparableClass.
	self buildOtherClass.
	self buildOtherSubClass.
	self buildSecondClass.
	self buildClassWithClassVariable.	
	
	AtomicClassInstaller reset.
	AtomicClassInstaller autocommit: false.

	SystemAnnouncer uniqueInstance weak when: Announcement send: #announcementReceived: to: self. 