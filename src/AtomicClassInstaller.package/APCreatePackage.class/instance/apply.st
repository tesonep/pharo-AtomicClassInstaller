public
apply
	| organizer |
	organizer := self installer packageOrganizer.
	(organizer packages
		anySatisfy: [ :each | organizer category: package matches: each packageName ])
		ifFalse: [ organizer registerPackage: (RPackage named: package capitalized) ]