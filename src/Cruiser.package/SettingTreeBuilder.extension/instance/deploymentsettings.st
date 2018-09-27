*Cruiser
deploymentsettings
	"Process a <deploymentsettings> pragma"

	<settingDeploymentPragmaProcessor>
	currentPragma methodClass instanceSide
		perform: currentPragma methodSelector
		with: self