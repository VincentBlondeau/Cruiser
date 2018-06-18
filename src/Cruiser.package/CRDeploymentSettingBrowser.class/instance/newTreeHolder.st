user interface
newTreeHolder
	| tree |
	tree := super newTreeHolder.
	tree
		persistence: (SystemSettingsPersistence settingTree: tree inFile: 'cruiser-settings.ston' asFileReference ).
	^ tree