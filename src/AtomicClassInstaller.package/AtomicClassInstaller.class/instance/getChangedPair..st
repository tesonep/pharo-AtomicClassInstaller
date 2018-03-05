operations
getChangedPair: aName
	"Returns the old version and new version of a Class / Trait, if there is one"
	changedClasses at:aName ifPresent:[:e | ^ e].
	newClasses detect:[:e | e name = aName] ifFound:[:e | ^ e].
	^ nil. 	