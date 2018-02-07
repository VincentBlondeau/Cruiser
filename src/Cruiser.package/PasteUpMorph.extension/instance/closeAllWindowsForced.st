*Cruiser
closeAllWindowsForced
	World systemWindows
		do: [ :w | 
			w makeClosable.
			[ w delete ] valueSupplyingAnswer: false ].
	1 second wait	"take time for one cycle to close the windows properly.. Maybe too much"