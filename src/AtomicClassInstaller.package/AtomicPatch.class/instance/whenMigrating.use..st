migrating
whenMigrating: aClassName use: migrator
	" The migrator parameter can be a block, that it should be clean, a String representing a block or an object that implements the interface.
	  If the migrator is an object it should be able to translate to STON if the patch is a remote patch.
	"
	| code |
	code := migrator isClosure
		ifTrue: [ 
			self assert: migrator isClean description: 'If the parameter is a block it should be clean'.
			migrator asString ]
		ifFalse: [ migrator ].
	transformations at: aClassName asSymbol put: code