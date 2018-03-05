as yet unclassified
convertFromMCVersions: mcVersions
	^ self new convertFrom: (MCPatch fromVersions: mcVersions)