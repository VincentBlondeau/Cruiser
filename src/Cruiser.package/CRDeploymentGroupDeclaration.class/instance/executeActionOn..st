private
executeActionOn: aSettingNode
	| collectionOfScriptToExec |
	self isActivated
		ifFalse: [ ^ self ].
	self shouldBeExecutedOnTargetImage
		ifFalse: [ aSettingNode contents do: [ :item | item item executeActionOn: item ] ]
		ifTrue: [ collectionOfScriptToExec := aSettingNode contents collect: [ :item | item item executeActionRemotelyOn: item ].
			aSettingNode isRoot
				ifTrue: [ CRScriptRunner runFromCollection: collectionOfScriptToExec ] ]