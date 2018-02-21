*Cruiser
deploymentDisableWorldMenuSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #disableWorldMenu)
		label: 'Disable WorldMenu';
		description: 'Disable the World Menu';
		actionTarget: [ WorldState ];
		actionTargetSelector: #disableWorldMenu;
		order: 600;
		parent: #cleaning