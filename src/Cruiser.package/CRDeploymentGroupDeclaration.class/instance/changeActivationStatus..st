private
changeActivationStatus: aBool
	self isActivated: aBool.
	self dependents do: #updateSelection.
	self children do: [ :aChild | aChild changeActivationStatus: aBool ].
