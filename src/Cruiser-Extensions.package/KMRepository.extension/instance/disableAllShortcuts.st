*Cruiser-Extensions
disableAllShortcuts
	(self globalCategories flatCollect: [ :each | each allEntries keymaps ]) do: #disable