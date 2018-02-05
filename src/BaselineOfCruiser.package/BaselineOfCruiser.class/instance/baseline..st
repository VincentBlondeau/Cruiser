baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'PharoLauncher-Download'
				with: [ spec
						className: #PharoLauncher;
						versionString: #bleedingEdge;
						loads: #Download;
						repository: 'http://www.smalltalkhub.com/mc/Pharo/PharoLauncher/main' ].
			spec package: 'Cruiser'.
			spec group: 'default' with: #('Cruiser') ]