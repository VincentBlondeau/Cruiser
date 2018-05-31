*Cruiser-Extensions
deploymentDisableDeprecationWarningsSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #deprecationException)
		label: 'Disable deprecation';
		description: 'Disable the deprecation warnings and debuggers than can popup for deprecations';
		actionTarget: [ Deprecation ];
		actionTargetSelector: #disableWarnings;
		order: 800;
		parent: #cleaning