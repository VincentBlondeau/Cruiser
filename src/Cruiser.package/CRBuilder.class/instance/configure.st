actions
configure
	self checkOrderAndMandatoryPlugins.
	instances := self plugins collect: [ :aPluginClass | (aPluginClass newWith: self) basicConfigure ]