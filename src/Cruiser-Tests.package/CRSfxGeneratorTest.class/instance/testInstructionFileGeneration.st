running
testInstructionFileGeneration
	| file |
	file := FileSystem memory / 'tempFile.txt'.
	instance instructionsFileReference: file.
	instance createInstructionFile.
	self assert: file exists.
	self assert: file contents equals: ';!@Install@!UTF-8!' , OSPlatform current lineEnding, ';!@InstallEnd@!'