visiting
executeActionOn: parentNode
	| args argsValues |
	self isActivated
		ifFalse: [ ^ self ].
	args := parentNode contents.
	argsValues := args collect: [ :argNode | self convertValue: argNode ].
	self actionTarget value perform: self actionTargetSelector withArguments: argsValues asArray