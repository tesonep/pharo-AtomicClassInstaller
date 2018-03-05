as yet unclassified
actualClass
	| cls |
	cls := AtomicClassInstaller uniqueInstance classAt: modifiedClassName.
	isMeta
		ifTrue: [ cls := cls class ].
	^ cls