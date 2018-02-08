accessing
realValue: anObject
	value := anObject.
	self triggerEvent: self privateChangeEvent with: self