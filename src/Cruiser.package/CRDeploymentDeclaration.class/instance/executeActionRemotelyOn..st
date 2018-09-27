visiting
executeActionRemotelyOn: aSettingNode
	self isActivated
		ifFalse: [ ^ #() ].
	^ CRExecutableScript script: (self script: aSettingNode)