accessing
default
	^ self defaultIsDeploymentVariable
		ifTrue: [ CRDeploymentSettings current perform: super default ]
		ifFalse: [ super default ]