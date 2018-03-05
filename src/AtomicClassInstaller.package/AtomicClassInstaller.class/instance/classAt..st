accessing
classAt: aName
	^self classAt: aName ifAbsent: [ self error: 'Unknown class ', aName ]. 