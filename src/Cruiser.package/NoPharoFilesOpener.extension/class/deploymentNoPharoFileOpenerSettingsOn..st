*Cruiser
deploymentNoPharoFileOpenerSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder
		deployment: #readOnlyNoPharoFileOpener)
		label: 'Activate NoPharoFileOpener';
		description: 'Deactivate the opening of the source files';
		actionTarget: [ NoPharoFilesOpener ];
		actionTargetSelector: #install;
		order: 20;
		parent: #readOnly