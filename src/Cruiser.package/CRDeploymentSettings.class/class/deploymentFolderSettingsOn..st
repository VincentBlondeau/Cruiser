as yet unclassified
deploymentFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #defaultFolder)
		label: 'Deployment folder';
		description: 'Folder where the operation to build the application will be done';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #folder:;
		order: 1;
		parent: #initializing;
		with: [ (aBuilder deploymentAttribute: #deploymentFolder)
				order: 0;
				type: #Directory;
				description: 'The path of the folder where the application will be deployed';
				default: self defaultFolder;
				label: 'Path' ]