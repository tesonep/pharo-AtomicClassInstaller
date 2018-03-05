*AtomicClassInstaller
postCopy
	classDefinedSelectors := classDefinedSelectors copy.
	metaclassDefinedSelectors := metaclassDefinedSelectors copy.
	classExtensionSelectors := classExtensionSelectors copy.
	metaclassExtensionSelectors := metaclassExtensionSelectors copy.
	classes := classes copy.
	classTags := classTags collect: #copy