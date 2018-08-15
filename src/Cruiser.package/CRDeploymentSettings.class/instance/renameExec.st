action
renameExec
	self executableName: self title, '.exe'.
	self vmFolder / PhLVirtualMachine  executableName renameTo: self executableName  