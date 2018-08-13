baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				preLoadDoIt: #preLoad;
				baseline: #PharoLauncher
					with: [ spec
						repository: 'github://pharo-project/pharo-launcher/src';
						loads: #Download ].
			spec package: 'Cruiser' with: [ spec requires: #('PharoLauncher') ].
			spec package: 'Cruiser-Extensions' with: [ spec requires: #('Cruiser') ].
			spec package: 'Cruiser-Tests' with: [ spec requires: #('Cruiser-Extensions' 'Cruiser') ].
			spec group: 'default' with: #('Cruiser-Extensions' 'Cruiser-Tests' 'Cruiser' 'PharoLauncher') ]