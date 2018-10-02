*Cruiser-Extensions
copyImageTo: aFileReferenceFolder named: anImageName 
	| isTheNewImage newSourceName srcFileRef wait |

	PharoFilesOpener default unsetInformAboutReadOnlyChanges.	"Because you cannot open twice a write handle on a windows file..."
	aFileReferenceFolder ensureCreateDirectory.
	"FreeTypeSystemSettings loadFt2Library: false.	Freetype unload to avoid startup bug"
	newSourceName := aFileReferenceFolder / anImageName , self sourcesSuffix.
	srcFileRef := self sourcesName asFileReference.
	srcFileRef = newSourceName
		ifFalse: [ self sourcesName asFileReference copyTo: newSourceName ].
	self sourcesName asFileReference copyTo: aFileReferenceFolder / srcFileRef basename.
	Smalltalk garbageCollect.	"Avoid missing weak ref bugs"
	wait := Semaphore new.
	[ isTheNewImage := self backupTo: anImageName folder: aFileReferenceFolder.
	wait signal ] forkAt: Processor highestPriority.
	wait wait.
	isTheNewImage
		ifTrue: [ SourceFiles close.
			self sourceFileVersionString: anImageName.
			SourceFiles ensureOpen.
			wait := Semaphore new.
			[ Smalltalk snapshot: true andQuit: false.
			wait signal ] forkAt: Processor highestPriority.
			wait wait.
			Smalltalk garbageCollect.
			Processor yield.
			srcFileRef = newSourceName
				ifFalse: [ (aFileReferenceFolder / srcFileRef basename) ensureDelete ].
			World submorphs select: [ :e | e isKindOf: GrowlMorph ] thenDo: #delete.
			CRSkipExecution signal ].
	SourceFiles ensureOpen.
	