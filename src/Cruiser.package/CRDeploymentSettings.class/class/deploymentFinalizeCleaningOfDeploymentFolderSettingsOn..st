deployment settings
deploymentFinalizeCleaningOfDeploymentFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanFolder)
		label: 'Clean Deployment folder';
		description: 'Clean the folder of the log, std, and crash files if any.';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #finalizeCleaningOfDeploymentFolder;
		order: 100;
		parent: #finalizing   