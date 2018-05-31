*Cruiser-Extensions
deploymentDeactivateCmdDotSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #deactivateCmdDot)
		label: 'Deactivate Cmd Dot';
		description: 'Deactivate the debugger opening after a cmd + .';
		actionTarget: [ UserInterruptHandler ];
		actionTargetSelector: #deactivateCmdDot;
		order: 500;
		parent: #cleaning