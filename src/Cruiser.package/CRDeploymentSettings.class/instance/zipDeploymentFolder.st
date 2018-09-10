deployment settings
zipDeploymentFolder
	| zipFileSystem filesToCopy zipArchive |
	filesToCopy := SelectVisitor preorder: self folder select: [ :e | e isFile ].
	zipArchive := ZipArchive new.
	filesToCopy do: [ :each | zipArchive addFile: each reference pathString as: each reference basename ].
	zipArchive writeToFileNamed: (self folder , 'zip') pathString