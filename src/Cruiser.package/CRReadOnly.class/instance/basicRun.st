private
basicRun
	"Todo first!"

	(Smalltalk at: #FFICompilerPlugin) install.
	"Then we can remove the sources"
	NoPharoFilesOpener install.	".image, .sources"
	NoChangesLog install.	"Epicea ?"
	EpMonitor reset.
	(Smalltalk at: #NoStdio) install.
	"to do at each startup:"
	GTPlayBook cacheDirectory: FileSystem memory / 'play-stash'.
	GTPlayBook stashDirectory: FileSystem memory / 'play-cache'.
	MCCacheRepository uniqueInstance disable.
	"Smalltalk garbageCollect"
	self flag: 'cleaning should be done too!'