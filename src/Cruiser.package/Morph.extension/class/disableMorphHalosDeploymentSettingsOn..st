*Cruiser
disableMorphHalosDeploymentSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #disableMorphHalos)
		label: 'Disable Morph Halos';
		description: 'Disable Morph Halos i.e. disable meta click on a morph that opens an halo to interact with it';
		actionTarget: [ Morph ];
		actionTargetSelector: #disableHalos;
		order: 50;
		parent: #cleaning
