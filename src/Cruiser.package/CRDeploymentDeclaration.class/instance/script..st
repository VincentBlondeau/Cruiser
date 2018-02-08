public declaration accessing
script: parentNode
	| args argsValues keywords targetClass |
	args := parentNode contents.
	argsValues := args collect: [ :argNode | argNode item realValue ].
	^ String
		streamContents: [ :stream | 
			targetClass := self actionTarget sourceNode body formattedCode.
			stream << targetClass.
			stream space.
			keywords := self actionTargetSelector separateKeywords splitOn: '  '.
			keywords
				withIndexDo: [ :keyword :index | 
					stream << keyword.
					keyword endsWithAColon
						ifTrue: [ stream space.
							(argsValues at: index) printOn: stream ] ].
			stream << '.' ]