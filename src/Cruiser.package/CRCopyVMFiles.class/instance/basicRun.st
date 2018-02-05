accessing
basicRun
	| vmTempZip res |
	vmTempZip := (self propertyAt: #folderLocation) / 'vmTemp.zip'.
	res := (self newHTTPClientForUrl: 'https://files.pharo.org/get-files/70/pharo-win-stable.zip') downloadTo: vmTempZip.
	res
		ifFalse: [ self halt ].
	ZipArchive new
		readFrom: vmTempZip;
		extractAllTo: (self propertyAt: #folderLocation)