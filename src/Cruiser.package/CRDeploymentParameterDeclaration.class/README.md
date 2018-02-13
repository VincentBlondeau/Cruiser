I representing a deployment setting declaration parameter. 
I am a node of a deployment setting. I know the value of the parameter I should perform for the deployment thanks to the value instance variable. 
The value can be a reference to the CRDeploymentSettings instance, in this case, the defaultIsDeploymentVariable IV is true.
The value can be a FileReference relative the the deployment folder (isRelative = true) or absolute (isRelative = false).

My parent is a CRDeploymentDeclaration. I have no child. I am instancied by the SettingsTreeBuilder

It is *very* important to order the parameter in the same order than the CRDeploymentDeclaration selector.

Example:
(aBuilder deploymentAttribute: #defaultTitleAttribute)
				order: 0;
				type: #String;
				default: self defaultTitle;
				description: 'The name of the deployment project';
				label: 'Title'
		
Internal Representation and Key Implementation Points.

    Instance Variables
	value:		anObject
	defaultIsDeploymentVariable:		aBool
	isRelative: 	aBool

=== N.B ===
It is tested only on Windows and it is very likely that is does not work on other plateforms.
