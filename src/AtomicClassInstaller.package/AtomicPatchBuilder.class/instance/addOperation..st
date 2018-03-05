operations
addOperation: anOperation
	(operations includes: anOperation)
		ifFalse: [ operations add: anOperation ]