*Cruiser
allChildrenMatchingRegex: aPattern
	"Return all the files and folders recursively nested in the receiver and matching the pattern, aPattern"

	^ self allChildren
		select: [ :each | each basename matchesRegex: aPattern ]