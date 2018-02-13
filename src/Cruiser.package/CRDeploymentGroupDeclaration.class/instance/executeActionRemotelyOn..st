as yet unclassified
executeActionRemotelyOn: aSettingNode
	self isActivated
		ifFalse: [ ^ self ].
	aSettingNode contents do: [ :item | item item executeActionRemotelyOn: item ]