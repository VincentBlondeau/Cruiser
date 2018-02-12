as yet unclassified
deploymentCleanFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanFolder)
		label: 'Clean Deployment folder'; 
		description: 'Clean the folder where the operation to build the application will be done';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #cleanFolder;
		order: 100;
		parent: #initializing