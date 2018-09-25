as yet unclassified
createScriptFile
	self stFile ensureDelete.
	self stFile
		writeStreamDo: [ :stream | 
			self writeHeaderOn: stream.
			stream << OSPlatform current lineEnding.
			self collectionToExecute flattened
				do: [ :execScript | execScript writeOn: stream ]
				separatedBy: [ stream << OSPlatform current lineEnding ].
			stream << OSPlatform current lineEnding.
			self writeFooterOn: stream ]