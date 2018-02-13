system startup
deploymentReadOnlySettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deploymentGroup: #readOnly)
		label: 'Make the image read only'; 
		description: 'Deactivate all the reads and writes on the disk';
		order: 100;
		parent: #cleaning