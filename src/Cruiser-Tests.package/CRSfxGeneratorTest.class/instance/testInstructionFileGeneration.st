running
testInstructionFileGeneration
	instance createInstructionFile.
	self assert: file exists.
	self
		assert: file contents
		equals: ';!@Install@!UTF-8!' , OSPlatform current lineEnding , ';!@InstallEnd@!'