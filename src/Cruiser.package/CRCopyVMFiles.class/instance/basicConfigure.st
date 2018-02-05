private
basicConfigure
	self shouldDownloadFromWeb ifNil: [ self shouldDownloadFromWeb: false ].
	self shouldDownloadFromWeb
		ifFalse: [ self localFile ifNil: [ self localFile: self localPharoVmZipFile ] ]