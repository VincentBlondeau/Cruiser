I am a location where the default settings for deployment are stored. I can be expanded if necessary.

To define a variable:

deploymentCleanFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanFolder)
		label: 'Clean Deployment folder';
		description: 'Clean the folder where the operation to build the application will be done';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #cleanFolder;
		order: 100;
		parent: #initializing

To use one of my variables:

(aBuilder deploymentAttribute: #windowTitleAttribute)
				type: #String;
				default: #projectName;
				defaultIsDeploymentVariable: true;
				description: 'The title';
				label: 'Title'

If defaultIsDeploymentVariable: is set at true, search for the selector set in default: on my current instance.