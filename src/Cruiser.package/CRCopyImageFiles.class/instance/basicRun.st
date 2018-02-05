accessing
basicRun
	| isTheNewImage currentSources |
	isTheNewImage := Smalltalk backupTo: self projectName folder: (self propertyAt: #folderLocation).
	isTheNewImage
		ifTrue: [ Smalltalk sourceFileVersionString: self projectName.
			CRSkipExecution signal ].
	currentSources := FileLocator imageDirectory asFileReference / Smalltalk sourcesName allButFirst.
	currentSources copyTo: (self propertyAt: #folderLocation) / self projectName , 'sources'