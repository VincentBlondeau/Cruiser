initialization
current
	^ Current ifNil: [ Current := self new ]