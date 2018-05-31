*Cruiser-Extensions
closeAllWindowsForced
	World systemWindows
		do: [ :w | 
			w makeClosable.
			[ w delete ] valueSupplyingAnswer: false ]