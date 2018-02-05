baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'PharoLauncher-Download'
				with: [ spec
						className: #ConfigurationOfPharoLauncher;
						versionString: #bleedingEdge;
						loads: #Download;
						repository: 'http://www.smalltalkhub.com/mc/Pharo/PharoLauncher/main' ].
			spec package: 'Cruiser' with: [ spec requires: #('PharoLauncher-Download') ].
			spec group: 'default' with: #('Cruiser' 'PharoLauncher-Download') ]