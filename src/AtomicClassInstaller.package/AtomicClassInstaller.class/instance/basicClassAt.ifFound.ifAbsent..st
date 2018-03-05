accessing
basicClassAt: name ifFound: aBlockFound ifAbsent: aBlockAbsent
	newClasses detect: [ :cls | cls name = name ] ifFound: aBlockFound.
	changedClasses
		detect: [ :kv | kv key name = name ]
		ifFound: [ :kv | aBlockFound value: kv value ]
		ifNone: aBlockAbsent