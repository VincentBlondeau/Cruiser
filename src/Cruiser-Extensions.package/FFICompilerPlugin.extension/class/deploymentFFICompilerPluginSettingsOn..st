*Cruiser-Extensions
deploymentFFICompilerPluginSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #readOnlyFFICompilerPlugin)
		label: 'Activate FFICompilerPlugin'; 
		description: 'Allows to execute FFI calls without the sources files';
		actionTarget: [ FFICompilerPlugin ];
		actionTargetSelector: #install;
		order: 10;
		parent: #readOnly