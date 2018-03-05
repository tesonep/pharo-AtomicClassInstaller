actions
commit
	self storedAnnouncements
		addAll: (SystemAnnouncer uniqueInstance suspendAllWhileStoring: [ self doCommit ]).
	
	self storedAnnouncements do:[:ann | SystemAnnouncer uniqueInstance announce: ann].
	self storedAnnouncements removeAll.