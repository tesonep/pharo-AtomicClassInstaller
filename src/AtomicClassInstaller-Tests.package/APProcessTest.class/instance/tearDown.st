as yet unclassified
tearDown
	semaphore ifNotNil: [ [ semaphore isEmpty not ] whileTrue: [ semaphore signal ] ]