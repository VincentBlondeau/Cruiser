accessing
executablePath
	^ (CRDeploymentSettings current folder /  CRDeploymentSettings current projectName, '-standalone' , 'exe') 