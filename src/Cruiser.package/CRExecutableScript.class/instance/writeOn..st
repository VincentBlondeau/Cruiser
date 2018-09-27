as yet unclassified
writeOn: aStream 
	aStream << '['.
	aStream << self script.
	aStream << '] on: Exception do: [].'.