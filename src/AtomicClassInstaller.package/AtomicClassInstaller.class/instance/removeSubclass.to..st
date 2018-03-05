notifications
removeSubclass: class to: superclass
	(self classAt: superclass name) removeSubclass: class.
	(self classAt: superclass name) removeSubclass: (changedClasses at: class name) key. 