traits
installTraitComposition: aTraitComposition on: aClass
	
	(aClass hasTraitComposition not and: [aTraitComposition isEmpty]) ifTrue: [^self].
	aTraitComposition assertValidUser: aClass.

	InstallTraitComposition for: self class: aClass trait: aTraitComposition. 

	aClass traitComposition traits do: [:each | RemoveUserOfTrait for:self class: aClass trait: each].
	aTraitComposition traits do: [:each | AddUserOfTrait for:self class: aClass trait: each]
