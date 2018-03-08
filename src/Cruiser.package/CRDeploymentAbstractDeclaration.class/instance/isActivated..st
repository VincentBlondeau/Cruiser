accessing
isActivated: aBool
	self children do: [:child | child changeActivationStatus: aBool ].
	isActivated := aBool