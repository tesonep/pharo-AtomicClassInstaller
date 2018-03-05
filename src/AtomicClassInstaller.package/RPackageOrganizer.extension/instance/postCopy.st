*AtomicClassInstaller
postCopy
	packages := packages collect: [ :p | p copy ].
	classExtendingPackagesMapping := classExtendingPackagesMapping
		collect: [ :x | x collect: [ :e | packages at: e name ifAbsent: [ e copy ] ] ].
	classPackageMapping := classPackageMapping collect: [ :e | packages at: e name ifAbsent: [ e copy ] ]