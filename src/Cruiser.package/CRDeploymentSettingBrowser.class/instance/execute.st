execute
execute
	[ self rootNodes do: #executeAction ]
		on: CRSkipExecution
		do: [ "Nothing" ]