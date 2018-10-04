as yet unclassified
createExecutableArchive
	self halt. 
	(Smalltalk at: #ProcessWrapper) new
		startWithShellCommand: 'copy /b "' , self sfxFilePathString , '" + "' , self instructionFilePathString , '" + "' , self sevenZArchivePathString , '" "'
				, self executablePathString, '"';
		yourself
			