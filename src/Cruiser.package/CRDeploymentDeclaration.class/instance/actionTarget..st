accessing
actionTarget: aCleanBlock
	aCleanBlock isClean
		ifFalse: [ self
				error: 'The actionTarget: should be a clean block (no references to its outside)' ].
	actionTarget := aCleanBlock