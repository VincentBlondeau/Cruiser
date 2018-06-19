*Cruiser-Extensions
deploymentDisableMenubarMorphSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #disableMenubar)
		label: 'Disable Menubar';
		description: 'Disable the Menu bar';
		actionTarget: [ MenubarMorph ];
		actionTargetSelector: #disableMenuBar;
		order: 600;
		parent: #cleaning