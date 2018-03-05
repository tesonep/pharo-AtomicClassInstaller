actions
impact
	| oldOrganizer |
	oldOrganizer := SystemOrganization.
	Smalltalk at: #SystemOrganization put: installer newOrganizer.
	[ self doImpact ]
		ensure: [ Smalltalk at: #SystemOrganization put: oldOrganizer ]