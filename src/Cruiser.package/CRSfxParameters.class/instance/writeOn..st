public-writing
writeOn: aWriteStream
	self title ifNotNil: [ :s | self printOn: aWriteStream parameter: 'Title' value: s ].
	self programToExecuteRelativePath
		ifNotNil: [ :s | 
			self printOn: aWriteStream parameter: 'ExecuteFile' value: s.
			self programToExecuteArguments
				ifNotNil: [ :args | self printOn: aWriteStream parameter: 'ExecuteParameters' value: (args joinUsing: ' ') ] ]