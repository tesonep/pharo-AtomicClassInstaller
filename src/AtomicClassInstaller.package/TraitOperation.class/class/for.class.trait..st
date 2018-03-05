instance creation
for: anAtomicClassInstaller class: aClass trait: aTrait 
	| op |
	op := self basicNew.
	op modifiedClass: aClass.
	op modifiedTrait: aTrait.
	op installer: anAtomicClassInstaller.
	op initialize.
	
	anAtomicClassInstaller addOperation:op.
	
	^op.