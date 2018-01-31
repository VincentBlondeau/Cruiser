baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'Cruiser'.
			"alien"
			spec group: 'default' with: #('Cruiser') ]