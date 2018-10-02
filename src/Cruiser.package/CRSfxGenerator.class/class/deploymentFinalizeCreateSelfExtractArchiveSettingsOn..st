as yet unclassified
deploymentFinalizeCreateSelfExtractArchiveSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #createSelfExtractArchive)
		label: 'SFX Archive';
		description: 'Create an self extractable executable archive that will run the Pharo app automagically.';
		actionTarget: [ CRSfxGenerator ];
		actionTargetSelector: #run;
		order: 1000;
		parent: #finalizing.