*Cruiser
copyImageDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #copyExistingImage)
		label: 'Copy Existing Image';
		description: 'Copy the current image to the deployment folder';
		actionTarget: [ SmalltalkImage current ];
		actionTargetSelector: #copyImageTo:named:;
		order: 50;
		parent: #copying;
		with: [ (aBuilder deploymentAttribute: #destinationFolder)
				type: #Directory;
				description: 'The path of a directory where you want to copy the image and sources folder';
				order: 1;
				default: #folder;
				defaultIsDeploymentVariable: true;
				label: 'Image Path'.
			(aBuilder deploymentAttribute: #imageName)
				type: #String;
				order: 2;
				default: #projectName;
				defaultIsDeploymentVariable: true;
				description: 'The name of the produced image';
				label: 'Copied image name' ]