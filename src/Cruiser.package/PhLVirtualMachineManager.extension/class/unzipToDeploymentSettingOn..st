*Cruiser
unzipToDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #unzipVM)
		label: 'Unzip existing VM zip:';
		description: 'Unzip an existing VM zip to the deployment folder';
		actionTarget: [ PhLVirtualMachineManager ];
		actionTargetSelector: #unzip:to:;
		order: 50;
		parent: #copying;
		with: [ (aBuilder deploymentAttribute: #zipFileReference)
				order: 0;
				type: #Directory;
				default: 'C:\Users\BlondVi\AppData\Roaming\pharo\vms\70-x86.zip' asFileReference;
				description: 'The path of a directory where the VM zip is';
				label: 'Zip Path'.
			(aBuilder deploymentAttribute: #unzipFileReference)
				order: 1;
				type: #Directory;
				default: #folder;
				defaultIsDeploymentVariable: true;
				description: 'The path of a directory where the VM zip should be unzipped';
				label: 'Unzip Path' ]