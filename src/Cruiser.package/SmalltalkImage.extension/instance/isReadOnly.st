*Cruiser
isReadOnly
	"true if the image is set in read only"

	^ Smalltalk globals at: #isReadOnlyImage ifAbsent: [ false ]