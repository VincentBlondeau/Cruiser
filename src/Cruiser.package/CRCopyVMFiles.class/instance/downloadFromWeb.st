run
downloadFromWeb
	| vmTempZip imageFileReference res |
	self flag: #TODO.
	vmTempZip := (self propertyAt: #folderLocation) / 'vmTemp.zip'.
	imageFileReference := ((self propertyAt: #folderLocation) allChildrenMatching: '*.image')
		first.
	(PhLVirtualMachineManager forImage: imageFileReference) vm.
	self halt.
	res := (self
		newHTTPClientForUrl: 'https://files.pharo.org/get-files/70/pharo-win-stable.zip')
		downloadTo: vmTempZip.
	res
		ifFalse: [ self halt ].
	ZipArchive new
		readFrom: vmTempZip;
		extractAllTo: (self propertyAt: #folderLocation)