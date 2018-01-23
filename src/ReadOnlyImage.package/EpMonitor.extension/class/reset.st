*ReadOnlyImage
reset
	"
	self reset
	"

	current
		ifNotNil: [ self current disable.
			self current: nil.
			OmSessionStore disable ]