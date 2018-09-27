as yet unclassified
writeFooterOn: aStream
	aStream << '''exec.log'' asFileReference writeStreamDo: [ :stream | stream << ''1'' ]. '.
aStream << '[ |wait| wait := Semaphore new.
			[ Smalltalk snapshot: true andQuit: true.
			wait signal ] forkAt: Processor highestPriority.
			wait wait.] value.'