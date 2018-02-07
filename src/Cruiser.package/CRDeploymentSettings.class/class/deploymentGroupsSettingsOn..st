as yet unclassified
deploymentGroupsSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #initializing)
		label: 'Initializing Actions';
		description: 'Operations to set up the main paramters for the application';
		order: 00.
	(aBuilder deployment: #copying)
		label: 'Copying Actions';
		description: 'Operations to prepare the files inside the packaging folder';
		order: 100.
	(aBuilder deployment: #configuring)
		label: 'Configuring Actions';
		description: 'Operations to configure the deployed image';
		order: 300.
	(aBuilder deployment: #cleaning)
		label: 'Cleaning Actions';
		description: 'Operations to clean the application';
		order: 400.
	(aBuilder deployment: #finalizing)
		label: 'Finalizing Actions';
		description: 'Operations to finalize the creation of the application';
		order: 500