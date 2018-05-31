*Cruiser-Extensions
deploymentGTPlayBookSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #readOnlyGTPlayBook)
		label: 'GTPlayBook In memory cache'; 
		description: 'GTPlayBook (GTPlayground) caches will be stored in memory files';
		actionTarget: [ GTPlayBook  ];
		actionTargetSelector: #setMemoryCachesDirectories;
		order: 60;
		parent: #readOnly