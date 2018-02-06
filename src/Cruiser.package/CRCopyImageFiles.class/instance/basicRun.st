private
basicRun
	| tmp1 tmp2 |
	tmp1 := Smalltalk
		backupTo: self projectName
		folder: (self propertyAt: #folderLocation).
	tmp1
		ifTrue: [ Smalltalk sourceFileVersionString: self projectName.
			SourceFiles ensureOpen.
			CRSkipExecution signal ].
	tmp2 := FileLocator imageDirectory asFileReference
		/ Smalltalk sourcesName allButFirst.
	tmp2
		copyTo: (self propertyAt: #folderLocation) / self projectName , 'sources'