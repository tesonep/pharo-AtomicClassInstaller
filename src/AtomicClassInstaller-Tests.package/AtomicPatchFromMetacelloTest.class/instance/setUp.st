as yet unclassified
setUp
	super setUp.
	baselineLoader := AtomicMetacelloBaselineLoader baseline: 'TokyoDB' repository: 'filetree://tokyodb/mc'.
	
	AtomicClassInstaller reset.
	AtomicClassInstaller autocommit: false.