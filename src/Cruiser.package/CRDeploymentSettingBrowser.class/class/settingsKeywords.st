accessing
settingsKeywords
	^ (PragmaCollector new filter: [ :prg | prg keyword = #settingDeploymentPragmaProcessor ]) reset
		collect: [ :p | p method selector ]