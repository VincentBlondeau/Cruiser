deployment settings
deploymentTitleSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #defaultTitle)
		label: 'Project title';
		description: 'The name of the deployment project';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #title:;
		order: 0;
		parent: #initializing;
		with: [ (aBuilder deploymentAttribute: #defaultTitleAttribute)
				order: 0;
				type: #String;
				default: self defaultTitle;
				description: 'The name of the deployment project';
				label: 'Title' ]