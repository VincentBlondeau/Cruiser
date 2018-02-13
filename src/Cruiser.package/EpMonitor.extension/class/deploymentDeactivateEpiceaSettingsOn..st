*Cruiser
deploymentDeactivateEpiceaSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #readOnlyEpicea)
		label: 'Deactivate Epicea';
		description: 'Deactivate the logging of the changes in Epicea';
		actionTarget: [ EpMonitor ];
		actionTargetSelector: #reset;
		order: 30;
		parent: #readOnly