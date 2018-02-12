accessing
inputWidget
	^ self theme
		newCheckboxIn: World
		for: self
		getSelected: #isActivated
		setSelected: #isActivated:
		getEnabled: #enabled
		label: 'Is Active?'
		help: nil