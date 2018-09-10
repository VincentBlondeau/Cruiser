deployment settings
deploymentFinalizeCleaningOfDeploymentFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanFolder)
		label: 'Clean Deployment folder';
		description: 'Clean the folder of the log, std, and crash files if any.';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #finalizeCleaningOfDeploymentFolder;
		order: 100;
		parent: #finalizing.
	(aBuilder deployment: #zipFolder)
		label: 'Create a Zip of Deployment folder';
		description: 'Zip all the files that are in the deployement folder.';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #zipDeploymentFolder;
		order: 999;
		parent: #finalizing