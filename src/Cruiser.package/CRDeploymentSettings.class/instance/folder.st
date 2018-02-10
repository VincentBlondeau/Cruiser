accessing
folder
	^ (folder ifNil: [ self class defaultFolder ]) asFileReference