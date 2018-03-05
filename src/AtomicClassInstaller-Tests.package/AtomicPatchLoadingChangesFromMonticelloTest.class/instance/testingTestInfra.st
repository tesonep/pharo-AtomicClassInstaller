as yet unclassified
testingTestInfra
	| usr |
	usr := self aciUser new.
	usr firstname: 'Pablo'.
	usr lastname: 'Tesone'.
	self assert: usr fullName equals: 'Pablo Tesone'.