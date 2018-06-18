*Cruiser-Extensions
windowTitleDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #stdioFileCreation)
		label: 'Stdio File Creation';
		description: 'Whether the stdio files should be created';
		actionTarget: [ Stdio ];
		actionTargetSelector: #useNullStreams;
		order: 100;
		parent: #readOnly