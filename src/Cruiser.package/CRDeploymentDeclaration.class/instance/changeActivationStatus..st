private
changeActivationStatus: aBool
	self isActivated: aBool.
	self dependents do: #updateSelection.
	