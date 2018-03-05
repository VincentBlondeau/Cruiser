deployment settings
finalizeCleaningOfDeploymentFolder
	#('PharoDebug.log' stderr stdout 'pharo-local' 'crash.dmp')
		do: [ :fileName | (self folder allChildrenMatching: 'fileName') do: #ensureDeleteAll ]