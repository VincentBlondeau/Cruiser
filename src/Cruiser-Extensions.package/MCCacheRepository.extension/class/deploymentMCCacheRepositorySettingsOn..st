*Cruiser-Extensions
deploymentMCCacheRepositorySettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #readOnlyMCCacheRepository)
		label: 'Disable MCCacheRepository';
		description: 'Monticello local cache repository (MCCacheRepository) will be disabled.';
		actionTarget: [ MCCacheRepository uniqueInstance ];
		actionTargetSelector: #disable;
		order: 70;
		parent: #readOnly