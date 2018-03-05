operations
applyAll
	self runPreScript.
	operations do:#apply.
	operations do:#postActionApply.
	self runPostScript.