as yet unclassified
configure
	self checkOrderAndMandatoryPlugins.
	instances := self plugins collect: [ :aPluginClass | aPluginClass new basicConfigure ].
	instances do: #basicRun