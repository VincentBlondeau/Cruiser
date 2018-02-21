action
cleanVMFolder
	| toRemove |
	toRemove := self vmFolder allChildren select: [ :file |  self filesToRemove anySatisfy: [:fileToRemove | file basename match: fileToRemove ] ].
	toRemove do: #ensureDelete 
	