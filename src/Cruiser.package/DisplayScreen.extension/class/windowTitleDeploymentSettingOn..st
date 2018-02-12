*Cruiser-Settings-Handle
windowTitleDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #windowTitle)
		label: 'Window title';
		description: 'The title of the main window that will be displayed';
		actionTarget: [ DisplayScreen ];
		actionTargetSelector: #setWindowTitle:;
		order: 100;
		parent: #configuring;
		with: [ (aBuilder deploymentAttribute: #windowTitleAttribute)
				type: #String;
				default: #projectName;
				defaultIsDeploymentVariable: true;
				description: 'The title';
				label: 'Title' ]