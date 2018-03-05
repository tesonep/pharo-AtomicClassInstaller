as yet unclassified
for: installer class: class oldCategory: oldCategory newCategory: newCategory 
	| op |
	op := self basicNew
				installer: installer;
				modifiedClass: class;
				oldCategory: oldCategory;
				newCategory: newCategory;
				initialize;
				yourself.
				
	installer addOperation: op.
	^op.