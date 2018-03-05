as yet unclassified
impact
	| oldComposition |
	oldComposition := self modifiedClass traitComposition.
	self modifiedClass traitComposition: self modifiedTrait.
	self modifiedClass applyChangesOfNewTraitCompositionReplacing: oldComposition.
