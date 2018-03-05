as yet unclassified
for: installer class: class superclass: aSuperclass 
	| op |
	op := self basicNew
				installer: installer;
				modifiedClass: class;
				superclass: aSuperclass;
				initialize;
				yourself.
				
	installer addOperation: op.
	^op.