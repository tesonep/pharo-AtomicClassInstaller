accessing
mcVersions
	| files |
	files := self packages collect: [ :e | e file , repository packageExtension ].
	^ (files collect: [ :e | repository versionNameFromFileName: e ])
							collect: [ :e | repository versionFrom: e ].
