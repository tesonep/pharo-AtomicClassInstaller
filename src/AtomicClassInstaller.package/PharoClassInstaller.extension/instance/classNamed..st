*AtomicClassInstaller
classNamed: aName
	^self classAt:aName ifAbsent: [ self error:'Class not found:' , aName ]