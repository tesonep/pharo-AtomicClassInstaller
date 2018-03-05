traits
copyTraitCompositionFrom: oldClass to: newClass

(oldClass traitComposition syntacticallyEquals: newClass traitComposition )ifTrue:[^ self ].
	self 
		installTraitComposition: oldClass traitComposition copyTraitExpression 
		on: newClass.
