deployment settings
deploymentGroupsSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deploymentGroup: #initializing)
		label: 'Initializing Actions';
		description: 'Operations to set up the main paramters for the application';
		icon: (self iconNamed: #smallNew);
		order: 00.
	(aBuilder deploymentGroup: #copying)
		label: 'Copying Actions';
		description: 'Operations to prepare the files inside the packaging folder';
		icon: (self iconNamed: #smallCopy);
		order: 100.
	(aBuilder deploymentGroup: #configuring)
		label: 'Configuring Actions';
		description: 'Operations to configure the deployed image';
		icon: (self iconNamed: #configuration);
		order: 300.
	(aBuilder deploymentGroup: #cleaning)
		label: 'Cleaning Actions';
		description: 'Operations to clean the application';
		icon: (self iconNamed: #glamorousTrash);
		order: 400.
	(aBuilder deploymentGroup: #UserOperations)
		label: 'User Operations';
		description: 'Operations to finalize the creation of the application. They have to be defined by the user of the application';
		icon: (self iconNamed: #user);
		order: 500.
	(aBuilder deploymentGroup: #finalizing)
		label: 'Finalizing Actions';
		description: 'Operations to finalize the creation of the packaging: cleaning folders and zipping for example';
		icon: (self iconNamed: #publish);
		order: 600