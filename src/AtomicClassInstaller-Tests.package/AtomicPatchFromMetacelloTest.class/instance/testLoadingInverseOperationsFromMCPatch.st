as yet unclassified
testLoadingInverseOperationsFromMCPatch
	| mcPatch inverseMCPatch |
	mcPatch := baselineLoader mcPatch.
	inverseMCPatch := MCPatch operations: ( mcPatch operations collect:#inverse ).
	atomicPatch := baselineLoader atomicPatch.
