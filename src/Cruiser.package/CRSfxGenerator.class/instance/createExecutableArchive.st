private
createExecutableArchive
	self executablePath ensureDelete.
	self executablePath ensureCreateFile.
	self executablePath
		binaryWriteStreamDo: [ :s | 
			{self sfxFilePath.
			self instructionFilePath.
			self sevenZArchivePath} do: [ :eachFile | eachFile binaryReadStreamDo: [ :inputStream | ZnUtils streamFrom: inputStream to: s ] ] ]