as yet unclassified
makeReadOnly
	NoPharoFilesOpener install.	".image, .sources"
	NoChangesLog install.	"Epicea ?"
	EpMonitor current disable.
	EpMonitor reset.
	NoStdio install.
	"to do at each startup:"
	GTPlayBook cacheDirectory: FileSystem memory / 'play-stash'.
	GTPlayBook stashDirectory: FileSystem memory / 'play-cache'.
	MCCacheRepository uniqueInstance disable