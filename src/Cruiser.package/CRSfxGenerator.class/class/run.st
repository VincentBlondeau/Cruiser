running
run
	self new
		parameters: (CRSfxParameters from: CRDeploymentSettings current);
		instructionsFileReference: CRDeploymentSettings current folder / 'deployExec.txt';
		run