accessing
realValue: anObject
	"Set the value of realValue"

	self isActivated: anObject.
	self triggerEvent: self privateChangeEvent with: self