accessing
postActionApply
	(isMeta and:[ selector = #initialize ]) ifTrue:[
		self actualClass theNonMetaClass initialize.
	]