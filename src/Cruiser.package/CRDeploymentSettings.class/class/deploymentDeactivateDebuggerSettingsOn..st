deployment settings
deploymentDeactivateDebuggerSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #deactivateDebugger)
		label: 'Deactivate debugger';
		description: 'replace the current debugger by a stub';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #deactivateDebugger;
		order: 500;
		parent: #cleaning