notifications
recategorize: newClass to: category
	| oldCategory |
	oldCategory := newClass category.
	newClass basicCategory: category.
	
	CategorizeClass
		for: self
		class: newClass
		oldCategory: oldCategory
		newCategory: category asSymbol