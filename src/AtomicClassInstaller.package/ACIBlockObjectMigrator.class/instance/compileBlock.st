as yet unclassified
compileBlock
	block := self class compiler evaluate: blockCode.
	self assert: [block isBlock].
	^block.