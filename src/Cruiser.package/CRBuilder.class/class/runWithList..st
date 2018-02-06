as yet unclassified
runWithList: aList
	^ self new
		pluginsList: aList;
		configure;
		run