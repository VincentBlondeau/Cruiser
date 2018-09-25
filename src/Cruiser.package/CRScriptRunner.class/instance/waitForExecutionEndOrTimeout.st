as yet unclassified
waitForExecutionEndOrTimeout
	| shouldExit process sem |
	shouldExit := false.
	sem := Semaphore new.
	Delay timeoutSemaphore: sem afterMSecs: 10000.
	process := [ [ shouldExit ]
		whileFalse: [ (CRDeploymentSettings current folder / 'exec.log') contents = '1'
				ifTrue: [ sem signal ].
			1 second wait ] ] fork.
	sem wait.
	shouldExit := true