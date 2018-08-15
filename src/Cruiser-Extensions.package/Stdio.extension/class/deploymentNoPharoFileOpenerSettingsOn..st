*Cruiser-Extensions
deploymentNoPharoFileOpenerSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder
		deployment: #readOnlyNoPharoFileOpener)
		label: 'Activate Stdio null streams';
		description: 'Deactivate the creation of the stdio files';
		actionTarget: [ Stdio ];
		actionTargetSelector: #useNullStreams;
		order: 25;
		parent: #readOnly