*Cruiser-Extensions
cleanWindowsDeploymentSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanWindows)
		label: 'Force close the windows';
		description: 'Close all the current opened windows discarding changes';
		actionTarget: [ World ];
		actionTargetSelector: #closeAllWindowsForced;
		order: 50;
		parent: #cleaning