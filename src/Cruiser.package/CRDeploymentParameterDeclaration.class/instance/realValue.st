accessing
realValue
	"Answer the value of realValue"

	^ value ifNil: [ self defaultValue ]