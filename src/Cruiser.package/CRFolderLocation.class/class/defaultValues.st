accessing
defaultValues
	^ {(#shouldOverwrite -> true).
	(#folder -> (FileLocator imageDirectory / 'packagedImage'))}