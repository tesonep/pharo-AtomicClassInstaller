running
removeClassIfExists: aClassName
	self environment at:aClassName ifPresent:[:x | x removeFromSystem].