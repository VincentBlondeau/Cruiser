*Cruiser
snapshot: save andQuit: quit
	| isImageStarting wait |
	"We do the snapshot in a separate process in maximum priority to have always a clean startup.
	This process will be interrupted by the fork, and will be resumed as soon as the snapshot finishes.
	We synchronize these processes in case both are in the same priority.
	When both arguments are false, do nothing and return false."
	(save or: [ quit ])
		ifFalse: [ ^ false ].
	wait := Semaphore new.
	[ isImageStarting := self launchSnapshot: save andQuit: quit.
	wait signal ] forkAt: Processor timingPriority - 1.
	wait wait.
	^ isImageStarting