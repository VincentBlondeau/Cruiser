*Cruiser
deploymentDisableShortcutsSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #disableShortcuts)
		label: 'Disable Shortcuts';
		description: 'Disable the shorcuts of the image';
		actionTarget: [ KMRepository default ];
		actionTargetSelector: #disableAllShortcuts;
		order: 800;
		parent: #cleaning