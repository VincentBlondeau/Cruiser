running
setUp
	instance := CRSfxGenerator new.
	file := FileSystem memory / 'tempFile.txt'.
	instance instructionsFileReference: file