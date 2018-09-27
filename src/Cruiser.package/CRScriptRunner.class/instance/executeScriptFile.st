running
executeScriptFile
	| vmLocation cmd res |
	vmLocation := CRDeploymentSettings current vmFolder.
	cmd := String
		streamContents: [ :stream | 
			stream << 'cd "' << vmLocation pathString << '" && '.
			Smalltalk os isUnix
				ifTrue: [ stream << 'export SQUEAK_PLUGINS="" && ' ].
			stream << $" << CRDeploymentSettings current executableFile pathString << $"
				<<
					(Smalltalk os isUnix
						ifTrue: [ ' --nodisplay ' ]
						ifFalse: [ '  ' ]) << $" << CRDeploymentSettings current imageFile pathString << '" '.
			stream << '--no-default-preferences st --save ' << $" << self stFilePath fullName << $"	"<< $"	"" ].
	res := PhLProcessWrapper waitForCommand: cmd.
	self waitForExecutionEndOrTimeout