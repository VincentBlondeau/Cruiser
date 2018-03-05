accessing
settingsKeywords
	^ (PragmaCollector new
		filter: [ :prg | prg keyword = self settingsPragma ]) reset
		collect: [ :p | p method selector ]