private
basicRun
	self shouldDownloadFromWeb
		ifTrue: [ self downloadFromWeb ]
		ifFalse: [ self unzipLocalVM ]