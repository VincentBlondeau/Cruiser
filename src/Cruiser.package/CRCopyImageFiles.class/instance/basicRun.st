private
basicRun
	| isTheNewImage currentSources |
	PharoFilesOpener default unsetInformAboutReadOnlyChanges. "Because you cannot open twice a write handle on a windows file..."
	isTheNewImage := Smalltalk backupTo: self projectName folder: (self propertyAt: #folderLocation).
	isTheNewImage
		ifTrue: [ Smalltalk sourceFileVersionString: self projectName.
			SourceFiles ensureOpen.
			CRSkipExecution signal ].
	SourceFiles ensureOpen.
	currentSources := FileLocator imageDirectory asFileReference / Smalltalk sourcesName allButFirst.
	currentSources copyTo: (self propertyAt: #folderLocation) / self projectName , 'sources'