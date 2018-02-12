I representing a deployment setting declaration. 
I am a node of a deployment setting. I know the action I should perform for the deployment thanks to the actionTargetSelector and the object on which I have to execute it. I know also how to perform these actions from a remote or a local way.
For the remote way, I execute a script through a process wrapper command. With the current implementation I cannot know if the operation has succeeded.   

My parent is a CRDeploymentGroup and my children are a description of the instance variables I can have. I am instancied by the SettingsTreeBuilder

Public API and Key Messages

- actionTarget:'s parameter is a clean block (a block with no references to external values). It is mandatory to call it on another image
- actionTargetSelector:'s parameter is a symbol that will be executed on the result of the execution of the actionTarget. 

Example:
deploymentCleanFolderSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #cleanFolder)
		label: 'Clean Deployment folder';
		description: 'Clean the folder where the operation to build the application will be done';
		actionTarget: [ CRDeploymentSettings current ];
		actionTargetSelector: #cleanFolder;
		order: 100;
		parent: #initializing
		
Internal Representation and Key Implementation Points.

    Instance Variables
	actionTarget:		aBlock
	actionTargetSelector:		aSymbol


    Implementation Points
actionTarget should be called on another image. The block should not use external references to variables or self (i.e. it should be clean)


=== N.B ===
It is tested only on Windows and it is very likely that is does not work on other plateforms.
