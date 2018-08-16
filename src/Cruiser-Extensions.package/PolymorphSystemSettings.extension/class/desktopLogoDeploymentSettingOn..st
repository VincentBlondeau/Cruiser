*Cruiser-Extensions
desktopLogoDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #desktopLogo)
		label: 'Desktop Logo';
		description: 'The logo that will appears in background of the app.';
		actionTarget: [ PolymorphSystemSettings ];
		actionTargetSelector: #desktopLogoFileName:;
		order: 100;
		parent: #configuring;
		with: [ (aBuilder deploymentAttribute: #desktopLogoReference)
				order: 1;
				type: #String;
				description: 'The path of a directory where the background image is';
				label: 'Path' ]