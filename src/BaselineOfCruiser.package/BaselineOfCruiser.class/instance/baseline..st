baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				preLoadDoIt: #preLoad;
				project: 'PharoLauncher-Download'
				with: [ spec
						className: #ConfigurationOfPharoLauncher;
						versionString: #bleedingEdge;
						loads: #Download;
						repository: 'http://www.smalltalkhub.com/mc/Pharo/PharoLauncher/main' ].
			spec package: 'Cruiser' with: [ spec requires: #('PharoLauncher-Download') ].
			spec package: 'Cruiser-Tests' with: [ spec requires: #('Cruiser') ].
			spec group: 'default' with: #('Cruiser-Tests' 'Cruiser' 'PharoLauncher-Download') ]