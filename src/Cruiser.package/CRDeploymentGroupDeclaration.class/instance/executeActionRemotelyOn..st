visiting
executeActionRemotelyOn: aSettingNode
	self isActivated
		ifFalse: [ ^ #() ].
	^ aSettingNode contents collect: [ :item | item item executeActionRemotelyOn: item ]