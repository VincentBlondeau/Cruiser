*Cruiser
fileDescriptorIsAvailable: anInteger
	self flag: 'Waiting for integration'.
	"Answer a boolean indicating whether the supplied file descriptor (anInteger) is available.
	A file descriptor is considered available if it is connected to a console / terminal, pipe or a file.  cygwin terminals are currently not supported (the pipe is created, but nothing appears in the terminal)"
	^ (self fileDescriptorType: anInteger) between: 1 and: 3