as yet unclassified
from: aCRDeploymentSettings
	^ self new
		title: aCRDeploymentSettings title;
		programToExecuteRelativePath: aCRDeploymentSettings executableName;
		programToExecuteArguments: aCRDeploymentSettings relativePathToImageFile fullName;
		yourself