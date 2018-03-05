accessing
classAt: name ifAbsent: aBlockClosure 
	self basicClassAt: name ifFound:[:cls | ^ cls ] ifAbsent:[ | anOldClass aNewClass |
			(name endsWith: ' classTrait') ifTrue:[ |traitName| 
				traitName := name withoutSuffix: ' classTrait'.
				anOldClass := (self classAt: traitName ifAbsent: aBlockClosure) classTrait.
			] ifFalse:[
				(self innerClassInstaller environment includesKey: name) ifFalse:[ ^ aBlockClosure value ].
				anOldClass := self innerClassInstaller environment at:name.
			]. 
			 
			aNewClass := self copyClass: anOldClass.
			
			self assert:[aNewClass class allInstances includes: aNewClass].
						
			^aNewClass.  
	].