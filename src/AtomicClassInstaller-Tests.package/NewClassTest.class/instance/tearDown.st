as yet unclassified
tearDown
	self environment at:#NewClass ifPresent:[:x | x removeFromSystem].
	super tearDown.