as yet unclassified
apply
	^ self removedClasses do: [:e | AtomicClassInstaller removeClass: (self class environment at:e) ].