accessing
vmFolder
	| res |
	res := self folder allChildrenMatchingRegex: CRDeploymentSettings current executableName , '|' , PhLVirtualMachine executableName.
	self assert: res size = 1.
	^ res first parent