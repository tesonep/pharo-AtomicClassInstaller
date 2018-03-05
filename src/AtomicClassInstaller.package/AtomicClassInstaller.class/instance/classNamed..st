accessing
classNamed: aName
	"Returns the class if its modified, the modified one if not the one in the internal installer"
	^ self basicClassAt: aName ifFound:[:c | ^ c]  ifAbsent:[^ innerClassInstaller classNamed: aName] 