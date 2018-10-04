running
testInstructionFileGenerationWithPath
	| params |
	params := CRSfxParameters new
		programToExecuteRelativePath: 'myProgramToExec.exe';
		yourself.
	instance parameters: params.
	instance createInstructionFile.
	self assert: file exists.
	self
		assert: file contents
		equals:
			';!@Install@!UTF-8!' , OSPlatform current lineEnding , 'ExecuteFile="myProgramToExec.exe"'
				, OSPlatform current lineEnding , ';!@InstallEnd@!'