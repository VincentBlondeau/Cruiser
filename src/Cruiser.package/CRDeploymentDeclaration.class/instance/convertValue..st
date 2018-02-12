private
convertValue: aSettingNode
	^ (#(#Directory #FileReference) includes: aSettingNode item type)
		ifFalse: [ aSettingNode item realValue ]
		ifTrue: [ aSettingNode item isRelative
				ifTrue: [ CRDeploymentSettings current folder / (aSettingNode item realValue ifNil: [ '' ]) ]
				ifFalse: [ aSettingNode item realValue asFileReference ] ]