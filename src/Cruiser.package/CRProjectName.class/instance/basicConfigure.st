accessing
basicConfigure
	self name ifNil: [ self name: (self class defaultValueFor: #name) ].
	self atBuilderProperty: #name put: self name