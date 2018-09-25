as yet unclassified
writeHeaderOn: aStream
	aStream << '''exec.log'' asFileReference writeStreamDo: [ :stream | stream << ''0'' ].'