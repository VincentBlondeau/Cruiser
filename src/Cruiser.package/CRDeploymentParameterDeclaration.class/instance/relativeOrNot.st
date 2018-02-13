private
relativeOrNot
	^ self isRelative
		ifTrue: [ 'Relative' ]
		ifFalse: [ '' ]