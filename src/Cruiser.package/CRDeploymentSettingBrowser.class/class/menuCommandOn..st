world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #Cruiser)
		parent: #Tools;
		order: 500;
		iconName: #smallConfigurationIcon;
		action: [ CRDeploymentSettingBrowser open ];
		keyText: 'o, c';
		help:
			'Opens a CRDeploymentSettingBrowser which allows you to deploy your application.'