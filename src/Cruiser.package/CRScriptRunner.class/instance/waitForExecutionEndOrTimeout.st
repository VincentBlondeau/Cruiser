as yet unclassified
waitForExecutionEndOrTimeout
	| shouldExit process sem |
	shouldExit := false.
	sem := Semaphore new.
	Delay timeoutSemaphore: sem afterMSecs: 10000.
	process := [ [ shouldExit ]
		whileFalse: [ | file |
			file := CRDeploymentSettings current folder / 'exec.log'.
			(file exists and: [ file contents = '1' ])
				ifTrue: [ sem signal ].
			1 second wait ] ] fork.
	sem wait.
	process isTerminated
		ifFalse: [ process terminate ].
	shouldExit := true