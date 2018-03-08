user interface
informStatus
	| message |
	message := 'Action named: ' , self label , ' has been executed!'.
	self inform: message.