tests
executeActionsOn: settingTree
	[ settingTree do: #executeAction ]
		on: CRSkipExecution
		do: [ "Nothing" ]