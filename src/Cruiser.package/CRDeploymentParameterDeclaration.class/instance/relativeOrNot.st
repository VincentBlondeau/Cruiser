accessing
relativeOrNot
	^ self isRelative
		ifTrue: [ 'Relative' ]
		ifFalse: [ '' ]