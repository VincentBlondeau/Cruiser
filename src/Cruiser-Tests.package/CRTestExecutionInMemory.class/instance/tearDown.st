running
tearDown
	deploymentSettingsNew folder ensureDeleteAll.
	CRDeploymentSettings current: deploymentSettingsOld.
	super tearDown