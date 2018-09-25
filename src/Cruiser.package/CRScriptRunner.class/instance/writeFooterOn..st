as yet unclassified
writeFooterOn: aStream
	aStream << '''exec.log'' asFileReference writeStreamDo: [ :stream | stream << ''1'' ].'