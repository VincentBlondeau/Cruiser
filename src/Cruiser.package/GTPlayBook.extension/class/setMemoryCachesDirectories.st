*Cruiser
setMemoryCachesDirectories
	self defaultCacheDirectory: FileSystem memory / 'play-stash'.
	self defaultStashDirectory: FileSystem memory / 'play-cache'.
	self reset