*Cruiser
deploymentImageCleanerSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #imageCleaner)
		label: 'Launch the image cleaner';
		description: 'Clean the image and unload some of the packages';
		actionTarget: [ ImageCleaner ];
		actionTargetSelector: #cleanUpForProduction;
		order: 900;
		parent: #cleaning