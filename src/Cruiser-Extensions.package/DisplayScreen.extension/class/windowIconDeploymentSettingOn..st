*Cruiser-Extensions
windowIconDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #windowIcon)
		label: 'Window Icon';
		description: 'The icon of the main window that will be displayed. Copy the icon file where the .image is as icon.ico';
		actionTarget: [ DisplayScreen ];
		actionTargetSelector: #setHostWindowIcon:;
		order: 100;
		parent: #configuring;
		with: [ (aBuilder deploymentAttribute: #windowIconAttribute)
				type: #String;
				description: 'The path to the ico file';
				label: 'Path' ]