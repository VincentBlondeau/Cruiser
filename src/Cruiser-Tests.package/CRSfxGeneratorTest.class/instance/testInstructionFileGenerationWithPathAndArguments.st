running
testInstructionFileGenerationWithPathAndArguments
	| params |
	params := CRSfxParameters new
		programToExecuteRelativePath: 'myProgramToExec.exe';
		programToExecuteArguments: #('/o myPrecious' 'arguments' 'ofMyProgram' 'IWantToExecute');
		yourself.
	instance parameters: params.
	instance createInstructionFile.
	self assert: file exists.
	self
		assert: file contents
		equals:
			';!@Install@!UTF-8!' , OSPlatform current lineEnding , 'ExecuteFile="myProgramToExec.exe"'
				, OSPlatform current lineEnding , 'ExecuteParameters="/o myPrecious arguments ofMyProgram IWantToExecute"'
				, OSPlatform current lineEnding , ';!@InstallEnd@!'