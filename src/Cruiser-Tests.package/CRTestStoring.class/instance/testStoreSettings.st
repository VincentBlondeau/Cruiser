tests
testStoreSettings
	| settingTree memFile |
	memFile := FileSystem memory / 'test.ston'.
	settingTree := SettingTree acceptableKeywords: {'deploymentsettings'}.
	settingTree
		persistence: (SystemSettingsPersistence settingTree: settingTree inFile: memFile).
	(settingTree nodeNamed: #cleanFolder) item isActivated: false.
	settingTree storeSettingNodes.
	(settingTree nodeNamed: #cleanFolder) item isActivated: true.
	self assert: memFile contents isNotEmpty.
	settingTree updateSettingNodes.
	self deny: (settingTree nodeNamed: #cleanFolder) item isActivated