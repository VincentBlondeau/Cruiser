running
setUp
	super setUp.
	self timeLimit: 2 minutes.
	session := Smalltalk session.
	deploymentSettingsOld := CRDeploymentSettings current.
	deploymentSettingsNew := CRDeploymentSettings new.
	deploymentSettingsNew folder: 'TempTestFolder'; title: 'TempTestApplication'.
	CRDeploymentSettings current: deploymentSettingsNew.
	
	