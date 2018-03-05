initialization
initialize
	super initialize.
	suspendedLists := Dictionary new.
	modifiedMethods := Set new.
	waitingFor := Set new.
	semaphore := Semaphore new.
	numberOfWaits := 0.