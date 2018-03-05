as yet unclassified
repoDirectory
	" It changes the path of the testCode repository, depending if it is in development environment or in Travis-CI"
	^ Smalltalk os environment
		at: 'TRAVIS'
		ifPresent: [ 'testCode-Repo' ]
		ifAbsent: [ '/Users/admin/dev/Pharo/shift/pharo-local/iceberg/tesonep/pharo-AtomicClassInstaller/testCode-Repo' ]