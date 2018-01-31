as yet unclassified
runWithDefault
	^ self new
		pluginsList: self defaultPluginsList;
		configure;
		run