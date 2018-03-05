as yet unclassified
loadPatch
	| loader |
	loader := AtomicLoader new.
	loader loadPatch: self atomicPatch.
	self fixMonticelloPackage.