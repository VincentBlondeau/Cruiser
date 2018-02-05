accessing
newHTTPClientForUrl: url
	^ ZnClient new
		signalProgress: true;
		url: url;
		enforceHttpSuccess: true;
		yourself