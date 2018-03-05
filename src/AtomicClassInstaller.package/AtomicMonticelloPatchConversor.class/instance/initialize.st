initialization
initialize
	super initialize.
	patch := AtomicPatch new.

	additionVisitor := AtomicMonticelloAdditionVisitor new
		patch: patch;
		yourself.

	removeVisitor := AtomicMonticelloRemoveVisitor new
		patch: patch;
		yourself.

	modifyVisitor := AtomicMonticelloModifyVisitor new
		patch: patch;
		yourself