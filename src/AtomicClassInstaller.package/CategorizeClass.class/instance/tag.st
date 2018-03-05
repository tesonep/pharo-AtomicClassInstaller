accessing
tag
	| tagName |
	^ tag
		ifNil: [ tagName := self newPackage toTagName: newCategory.
			tag := self newPackage classTagNamed: tagName ifAbsent: [ self newPackage basicAddClassTag: tagName ] ]