running
tearDown
	session ~= Smalltalk session
		ifTrue: [ ^ self ].
	deploymentSettingsNew folder ensureDeleteAll.
	CRDeploymentSettings current: deploymentSettingsOld.
	super tearDown