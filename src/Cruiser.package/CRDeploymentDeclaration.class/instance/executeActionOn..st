as yet unclassified
executeActionOn: parentNode
	| args argsValues |
	args := parentNode contents.
	argsValues := args collect: [ :argNode | argNode item realValue ].
	self actionTarget perform: self actionTargetSelector withArguments: argsValues asArray