*Cruiser
standardIOStreamNamed: moniker forWrite: forWrite
	"Create the requested stdio (#stdin, #stdout, #stderr) if possible.
	On Windows, if stdio is not available, create a regular file instead."

	| handle streamIndex |
	self flag: 'waiting for integration'.
	streamIndex := #(stdin stdout stderr) identityIndexOf: moniker.
	handle := File stdioHandles at: streamIndex.
	(handle isNil or: [ (File fileDescriptorIsAvailable: streamIndex - 1) not ])
		ifTrue: [ "On windows, create a file for stdio, error on other platforms"
			Smalltalk os isWindows
				ifTrue: [ ^ self createStdioFileFor: moniker ]
				ifFalse: [ self error: moniker , ' is unavailable' ] ].
	^ StdioStream handle: handle file: (File named: moniker) forWrite: forWrite