private-writing
writeParametersOn: aZnCharacterWriteStream
	self parameters ifNotNil: [ :params | params writeOn: aZnCharacterWriteStream ]