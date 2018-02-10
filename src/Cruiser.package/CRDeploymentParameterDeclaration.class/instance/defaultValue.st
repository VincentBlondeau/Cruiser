accessing
defaultValue
	^ self type = #Directory
		ifTrue: [ self default ifNotNil: #fullName ]
		ifFalse: [ self default ]