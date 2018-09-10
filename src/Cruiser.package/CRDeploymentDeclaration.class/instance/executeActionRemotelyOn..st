visiting
executeActionRemotelyOn: aSettingNode
	| vmLocation cmd res |
	self isActivated
		ifFalse: [ ^ self ].
		
	vmLocation := CRDeploymentSettings current vmFolder.
	cmd := String
		streamContents: [ :stream | 
			stream << 'cd "' << vmLocation pathString << '" && '.
			Smalltalk os isUnix
				ifTrue: [ stream << 'export SQUEAK_PLUGINS="" && ' ].
			"stream << 'start /b cmd /c ""'."
			stream << $" << CRDeploymentSettings current executableFile pathString << $"
				<<
					(Smalltalk os isUnix
						ifTrue: [ ' --nodisplay ' ]
						ifFalse: [ '  ' ]) << $" << CRDeploymentSettings current imageFile pathString << '" '.
			stream << '--no-default-preferences eval --save ' << $" <<  (self script: aSettingNode) "<< $" "" << $" ].
	res := PhLProcessWrapper waitForCommand: cmd.
	"It seems that a finalization for the remote command has to be done. A wait of 2 seconds avoids that the execution fail.
	And return of execution cannot be tested with OSProcess..."
	2 seconds wait.
	self informStatus