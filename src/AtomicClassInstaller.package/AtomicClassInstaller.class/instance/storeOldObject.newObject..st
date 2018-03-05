operations
storeOldObject: oldObject newObject: newObject
	| idx |
	"Adds or updates a new object to be becomed, based in the old object."
	
	idx := oldObjects
		indexOf: oldObject
		ifAbsent: [ oldObjects add: oldObject.
			newObjects add: newObject.
			self assert: [oldObjects size = newObjects size].
			^ self
			].
	newObjects at: idx put: newObject