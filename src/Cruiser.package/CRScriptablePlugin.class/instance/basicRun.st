private
basicRun
	| vmLocation cmd |
	vmLocation := self propertyAt: #folderLocation.
	cmd := String
		streamContents: [ :stream | 
			stream << 'cd "' << vmLocation pathString << '" && '.
			Smalltalk os isUnix
				ifTrue: [ stream << 'export SQUEAK_PLUGINS="" && ' ].
			stream << $" << (vmLocation allChildrenMatching: 'Pharo.exe') first pathString << $"
				<<
					(Smalltalk os isUnix
						ifTrue: [ ' --nodisplay ' ]
						ifFalse: [ ' --headless ' ]) << $" << (vmLocation allChildrenMatching: '*.image') first pathString << '" '.
			stream << '--no-default-preferences eval --save ' << $" << self script << $" ].
	PhLProcessWrapper waitForCommand: cmd