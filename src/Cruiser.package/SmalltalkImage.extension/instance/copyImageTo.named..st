*Cruiser
copyImageTo: aFileReferenceFolder named: anImageName
	| isTheNewImage currentSources |
	PharoFilesOpener default unsetInformAboutReadOnlyChanges.	"Because you cannot open twice a write handle on a windows file..."
	isTheNewImage := self backupTo: anImageName folder: aFileReferenceFolder.
	isTheNewImage
		ifTrue: [ self sourceFileVersionString: anImageName.
			SourceFiles ensureOpen.
			CRSkipExecution signal ].
	SourceFiles ensureOpen.
	currentSources := FileLocator imageDirectory asFileReference
		/ self sourcesName allButFirst.
	currentSources copyTo: aFileReferenceFolder / anImageName , 'sources'