private
convertValue: aSettingNode
	^ (#(#Directory #FileReference) includes: aSettingNode item type)
		ifFalse: [ aSettingNode item realValue ]
		ifTrue: [ aSettingNode item isRelative
				ifTrue: [ aSettingNode item realValue
						ifNil: [ CRDeploymentSettings current folder ]
						ifNotNil: [ :segment | CRDeploymentSettings current folder / segment ] ]
				ifFalse: [ aSettingNode item realValue asFileReference ] ]