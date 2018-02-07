private
script
	^ 'World closeAllWindowsEvenUnclosableDiscardingChanges. 2 seconds wait'
	"
	
[SystemWindow withAllSubclassesDo: [ :subclass | 
			subclass allInstances do: [ :window | 
					window model notNil
						ifTrue: [ window makeClosable; close ] ] ] ] on: Error do: []'"