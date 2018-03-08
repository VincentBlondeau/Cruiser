deployment settings
finalizeCleaningOfDeploymentFolder
	#('PharoDebug.log' stderr stdout 'pharo-local' 'crash.dmp' 'pharo.version')
		do: [ :fileName | (self folder allChildrenMatching: fileName) do: #ensureDeleteAll ]