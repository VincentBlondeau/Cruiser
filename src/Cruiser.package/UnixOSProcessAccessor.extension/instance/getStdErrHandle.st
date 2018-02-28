*Cruiser
getStdErrHandle
	"Answer the handle (a SQFile data structure in interp.c) for the standard error for the
	OS process in which I am currently executing."

	^ self primGetStdErrHandle
		ifNotNil: [:handle | self ioAccessorFromSQFile: handle]