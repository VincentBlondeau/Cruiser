*Cruiser
downloadAndCopyTo: aFileReferenceToAFolder
	| vmPath |
	vmPath := (self vmForImage: CRDeploymentSettings current imageFile) asFileReference parent.
	vmPath copyAllTo: aFileReferenceToAFolder