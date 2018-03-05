operations
newObjectFor: anOldObject
	"Returns an object if the object is already in the pair of Old / New objects, the collections 
	  to be becomed."
	| idx |
	idx := oldObjects indexOf: anOldObject ifAbsent:[^nil]. 
	^ newObjects at:idx.