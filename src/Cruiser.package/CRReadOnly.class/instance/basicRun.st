private
basicRun
	"Todox first!"

	(Smalltalk at: #FFICompilerPlugin) install. 10
	..
	"Then we can remove the sources"
	NoPharoFilesOpener install.	".image, .sources" 20.
	NoChangesLog install.	"Epicea ?" 30.
	EpMonitor reset. 40.
	(Smalltalk at: #NoStdio) install. 50 .#todo..
	"to do at each startup:"
	GTPlayBook cacheDirectory: FileSystem memory / 'play-stash'.
	GTPlayBook stashDirectory: FileSystem memory / 'play-cache'.
	MCCacheRepository uniqueInstance disable.
	"Smalltalk garbageCollect"
	self flag: 'cleaning should be done too!'