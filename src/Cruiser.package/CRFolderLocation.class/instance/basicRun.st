private
basicRun
	self folder exists
		ifTrue: [ self shouldOverwrite
				ifFalse: [ self folder: self folder nextVersion ]
				ifTrue: [ self folder deleteAllChildren ] ].
	self folder ensureCreateDirectory.
	self atBuilderProperty: #folderLocation put: self folder