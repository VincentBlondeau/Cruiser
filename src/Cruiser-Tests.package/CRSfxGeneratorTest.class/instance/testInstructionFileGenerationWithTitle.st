running
testInstructionFileGenerationWithTitle
	| title params |
	title := 'The Title Of my App'.
	params := CRSfxParameters new
		title: title;
		yourself.
	instance parameters: params.
	instance createInstructionFile.
	self assert: file exists.
	self
		assert: file contents
		equals:
			';!@Install@!UTF-8!' , OSPlatform current lineEnding , 'Title="The Title Of my App"'
				, OSPlatform current lineEnding , ';!@InstallEnd@!'