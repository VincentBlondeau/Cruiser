deployment settings
deploymentCleanVMForDesktopAppSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanVM)
		label: 'Clean VM folder';
		description: 'Clean the VM folder for Windows desktop deployment';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #cleanVMFolder;
		order: 900;
		parent: #copying.
	(aBuilder deployment: #renameExecVM)
		label: 'Rename Pharo Exec';
		description: 'Rename the Pharo executable with the project name';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #renameExec;
		order: 900;
		parent: #copying