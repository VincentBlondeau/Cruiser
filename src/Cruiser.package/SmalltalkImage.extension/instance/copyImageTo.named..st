*Cruiser
copyImageTo: aFileReferenceFolder named: anImageName
	| isTheNewImage newSourceName srcFileRef |
	PharoFilesOpener default unsetInformAboutReadOnlyChanges.	"Because you cannot open twice a write handle on a windows file..."
	aFileReferenceFolder ensureCreateDirectory.
	"FreeTypeSystemSettings loadFt2Library: false.	Freetype unload to avoid startup bug"
	newSourceName := aFileReferenceFolder / anImageName , 'sources'.
	srcFileRef := self sourcesName asFileReference.
	srcFileRef = newSourceName
		ifFalse: [ self sourcesName asFileReference copyTo: newSourceName ].
	self sourcesName asFileReference copyTo: aFileReferenceFolder / srcFileRef basename.

	aFileReferenceFolder / anImageName , 'sources'.
	Smalltalk garbageCollect . "Avoid missing weak ref bugs"
	isTheNewImage := self backupTo: anImageName folder: aFileReferenceFolder.
	isTheNewImage
		ifTrue: [ SourceFiles close.
			self sourceFileVersionString: anImageName.
			SourceFiles ensureOpen.
			Smalltalk snapshot: true andQuit: false.
			srcFileRef = newSourceName
				ifFalse: [ (aFileReferenceFolder / srcFileRef basename) ensureDelete ].
			World submorphs select: [ :e | e isKindOf: GrowlMorph ] thenDo: #delete.

			CRSkipExecution signal ].
	SourceFiles ensureOpen.