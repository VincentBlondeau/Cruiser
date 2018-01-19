as yet unclassified
playgroundSave

IceCredentialsProvider useCustomSsh: true.
IceCredentialsProvider sshCredentials
	publicKey: 'C:\Users\BlondVi\.ssh\id_rsa.pub';
	privateKey: 'C:\Users\BlondVi\.ssh\id_rsa'.
	
SmalltalkImage current isReadOnly: true.
NoPharoFilesOpener install. ".image, .sources"
NoChangesLog install. "Epicea ?"
EpMonitor current disable.
EpMonitor reset.

"to do at each startup:"
GTPlayBook cacheDirectory: FileSystem memory / 'play-stash'.
GTPlayBook stashDirectory: FileSystem memory / 'play-cache'.