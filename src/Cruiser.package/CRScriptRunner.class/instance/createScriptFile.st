as yet unclassified
createScriptFile
	self stFile ensureDelete.
	Count ifNil: [ Count := 0 ].
	self stFile
		writeStreamDo: [ :stream | 
			self writeHeaderOn: stream.
			stream << OSPlatform current lineEnding.
			self collectionToExecute flattened
				do: [ :execScript | execScript writeOn: stream ]
				separatedBy: [ stream << OSPlatform current lineEnding.
					Count := Count + 1.
					stream << '''exec2.log'' asFileReference writeStreamDo: [ :st | st << ''' << Count asString << '''].'.
					stream << OSPlatform current lineEnding ].
			stream << OSPlatform current lineEnding.
			self writeFooterOn: stream ]