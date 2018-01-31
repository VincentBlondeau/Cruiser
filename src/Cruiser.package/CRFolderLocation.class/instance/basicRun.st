accessing
basicRun
self halt.
	self folder exists
		ifTrue: [ self shouldOverwrite ifTrue: [ self folder: self folder nextVersion  ] ].
	self folder ensureCreateDirectory.
	self atBuilderProperty: #folderLocation put: self folder