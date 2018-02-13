*Cruiser
deploymentNoChangeLogSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #readOnlyNoChangeLog)
		label: 'Install NoChangeLog';
		description: 'Deactivate the logging of the changes';
		actionTarget: [ NoChangesLog ];
		actionTargetSelector: #install;
		order: 25;
		parent: #readOnly