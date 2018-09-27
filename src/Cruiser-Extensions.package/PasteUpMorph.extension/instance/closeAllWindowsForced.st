*Cruiser-Extensions
closeAllWindowsForced
	World systemWindows copy
		do: [ :w | 
			w makeClosable.
			[ w delete ] valueSupplyingAnswer: false ]