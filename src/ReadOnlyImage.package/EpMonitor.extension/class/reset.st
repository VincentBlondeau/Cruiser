*ReadOnlyImage
reset
	"
	self reset
	"

	self current disable.
	self current: nil.
	Smalltalk garbageCollect.