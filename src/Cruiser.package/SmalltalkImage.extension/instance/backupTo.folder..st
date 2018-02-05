*Cruiser
backupTo: aImageName folder: aFileReferenceToAFolder
	"Create a new backup of this image. 
	Unlike #saveAs: do not transfer the default execution to the new image. 
	Results:
		true  when continuing in the new session
		false for the current session"

	SourceFiles changesFileStream
		ifNotNil: [ self
				closeSourceFiles;
				"so copying the changes file will always work"
					saveChangesInFileNamed: aFileReferenceToAFolder / aImageName , 'changes' ].
	^ self backupImageInFileNamed: aFileReferenceToAFolder / aImageName , 'image'