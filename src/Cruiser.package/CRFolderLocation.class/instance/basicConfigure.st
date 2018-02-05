accessing
basicConfigure
	self shouldOverwrite ifNil: [ self shouldOverwrite: (self class defaultValueFor: #shouldOverwrite) ].
	self folder ifNil: [ self folder: (self class defaultValueFor: #folder) ].
	