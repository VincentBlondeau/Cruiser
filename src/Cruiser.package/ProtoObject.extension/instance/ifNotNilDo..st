*Cruiser
ifNotNilDo: ifNotNilBlock
	"Evaluate the block, unless I'm == nil (q.v.). If the receiver is not nil, pass it as argument to the block."

	^ self ifNotNil: ifNotNilBlock 