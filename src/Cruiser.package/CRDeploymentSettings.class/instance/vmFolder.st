accessing
vmFolder
	| res |
	res := self folder
		allChildrenMatchingRegex: CRDeploymentSettings current executableName , '|' , PhLVirtualMachine executableName.
	self assert: res size = 1 description: res asString , ' should contain only one entry.'.
	^ res first parent