private
script
	^ '[SystemWindow withAllSubclassesDo: [ :subclass | 
			subclass allInstances do: [ :window | 
					window model notNil
						ifTrue: [ window makeClosable; close ] ] ] ] on: Error do: []'
