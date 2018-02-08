as yet unclassified
executeActionOn: aSettingNode
	self shouldBeExecutedOnTargetImage
		ifFalse: [ aSettingNode contents do: [ :item | item item executeActionOn: item ] ]
		ifTrue: [ aSettingNode contents do: [ :item | item item executeActionRemotelyOn: item ] ]