tests
testExecution
	| settingTree fileNames filesThatShouldBePresent filesThatShouldBeAbsent |
	settingTree := (SettingTree acceptableKeywords: {'deploymentsettings'}) settingTreeRoots.
	self shouldnt: [ self executeActionsOn: settingTree ] raise: NotFound.
	fileNames := deploymentSettingsNew folder asFileReference children collect: #basename.
	self assert: fileNames isNotEmpty.
	filesThatShouldBePresent := #('TempTestApplication.image' 'TempTestApplication.exe').
	self assert: (filesThatShouldBePresent difference: fileNames) isEmpty.
	filesThatShouldBeAbsent := #('PharoDebug.log' #stderr #stdout 'TempTestApplication.sources' 'TempTestApplication.changes' 'pharo.version').
	self assertCollection: (filesThatShouldBeAbsent difference: fileNames) hasSameElements: filesThatShouldBeAbsent 