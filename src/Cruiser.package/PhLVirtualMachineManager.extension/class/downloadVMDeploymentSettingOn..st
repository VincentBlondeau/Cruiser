*Cruiser
downloadVMDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #downloadVM)
		label: 'Download VM optimized for the image';
		description:
			'Download the VM relative to the image I packaged and copy it to the relative folder to the deployment folder that is in argument.';
		actionTarget: [ PhLVirtualMachineManager ];
		actionTargetSelector: #downloadAndCopyTo:;
		order: 50;
		parent: #copying;
		with: [ (aBuilder deploymentAttribute: #unzipFileReference)
				order: 0;
				type: #Directory;
				description:
					'The relative path of a directory where the VM zip should be unzipped';
				label: 'Relative Unzip Path' ]