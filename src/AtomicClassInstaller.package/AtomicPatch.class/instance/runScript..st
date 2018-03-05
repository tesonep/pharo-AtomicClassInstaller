accessing
runScript: aScriptText
	aScriptText ifNil: [ ^ self ].
	^self class compiler evaluate: aScriptText.
