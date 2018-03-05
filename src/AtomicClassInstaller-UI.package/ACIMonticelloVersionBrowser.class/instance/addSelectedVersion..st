as yet unclassified
addSelectedVersion: panel
	| repo versionName |
	repo := panel entity first.
	versionName := panel selection.
	selectedVersions add: (repo versionFrom: versionName).
	self announcer announce: ACISelectedVersionsUpdate new.

