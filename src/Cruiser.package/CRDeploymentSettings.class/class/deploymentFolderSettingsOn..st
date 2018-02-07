as yet unclassified
deploymentFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #defaultFolder)
		label: 'Deployment folder';
		description: 'Folder where the operation to build the application will be done';
		actionTarget: self current;
		actionTargetSelector: #folder:;
		default: FileLocator imageDirectory / 'packagedImage';
		order: 1;
		orderGroup: #init;
		with: [ (aBuilder deploymentAttribute: #deploymentFolder)
				order: 0;
				type: #Directory;
				description: 'The path of the folder where the application will be deployed';
				label: 'Deployment folder path' ]