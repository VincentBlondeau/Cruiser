*Cruiser
copyImageTo: aFileReferenceFolder named: anImageName
	| isTheNewImage |
	PharoFilesOpener default unsetInformAboutReadOnlyChanges.	"Because you cannot open twice a write handle on a windows file..."
	aFileReferenceFolder ensureCreateDirectory.
	self sourcesName asFileReference copyTo: aFileReferenceFolder / anImageName , 'sources'.
	isTheNewImage := self backupTo: anImageName folder: aFileReferenceFolder.
	isTheNewImage
		ifTrue: [ self sourceFileVersionString: anImageName.
			SourceFiles ensureOpen.
			CRSkipExecution signal ].
	SourceFiles ensureOpen