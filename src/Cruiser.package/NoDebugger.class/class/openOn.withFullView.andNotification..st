opening
openOn: aDebugSession withFullView: aBool andNotification: aString
	"Do nothing"

	self
		inform:
			(String
				streamContents: [ :s | 
					s
						<< 'ERROR. Here is the stack:';
						<< OSPlatform current lineEnding.
					aDebugSession interruptedContext
						shortDebugStackOn: s ])