system startup
cleanDeploymentFolderForReadOnly
	(CRDeploymentSettings current folder allChildrenMatching: 'pharo-local') do: #ensureDeleteAll.
	(CRDeploymentSettings current folder allChildrenMatching: '*.sources') do: #ensureDeleteAll.
	(CRDeploymentSettings current folder allChildrenMatching: '*.changes') do: #ensureDeleteAll.
	