# Cruiser
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FVincentBlondeau%2FCruiser.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FVincentBlondeau%2FCruiser?ref=badge_shield)


Cruiser is a tool to package Pharo applications.
The idea is to quickly convert an application in a development environment to a production one.
A production environment means:
- No writing on the disk
- No access to the source code (by the shortcuts, debugger,...)
- No error displaying on the interface
- The only thing accessible is the developed application 

Slides from ESUG 18 there: https://www.slideshare.net/esug/cruiser-a-tool-to-package-pharo-applications

## How to install

On a latest Pharo 7 image, clone the repository in Iceberg and load the baseline of Cruiser.

## How to deploy you own application

Some default options are defined but you have to add some informations to deploy you own application. To do that, you first need to fill this code template with informations concerning you application:

```smalltalk
openAppDeploymentSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #gameCollectorApp)
		label: 'My App';
		description: 'My super cool app to deploy!';
		actionTarget: [ MyAppClass ];
		actionTargetSelector: #openMyApp;
		order: 100;
		parent: #finalizing 
```

actionTargetSelector is the selector that will be executed on the result of the actionTarget block.
As the actions are made on a other image, it is important that the actionTarget block do not contains any reference to its outside context, e.g. self, temporary or instance variables, globals, etc....

Once your application configured to be used with Cruiser, open the GUI through the World menu, Tools >> Cruiser (Shortcut: CTRL + C + O).
Then, configure the options you want for your deployed image, and click on execute. All the operations will be executed and you will be able to find the packaged image on the folder you indicated.


## Features

The application packaging is highly customizable. The actions are split in 5 groups:

- #initializing group contains the  Initializing Actions. They set up the main paramters for the application like cleaning the deployment folder and define some variables that are reused in the process like the deployment folder location and the name of the project.
- #copying group contains the Copying Actions. These operations prepare the files inside the packaging folder like the VM, the image, and the potential dependencies or resources.
- #configuring group contains  the Configuring Actions. They configure the deployed image by installing requiered packages, configure some tools, etc....
- #cleaning group contains the Cleaning Actions. They are cleaning the to-be-deployed image, like removing the debugger, uninstall the tests classes, close the windows, disables the shortcuts, and allow the image to be read only.
- #finalizing group contains the Finalizing Actions. They allows to finalize the creation of the deployment image by launching the end user application.

Any action or group of actions can be activated or deactivated by clicking on the associated checkbox.

The actions in the two first actions groups are executed in the current image. The others are executed remotely on the created deployment image.

### Adding New Actions

You can define your own features for you project in creating a method with one parameter which is the deployment settings builder and with the pragma deploymentsettings.
You can create groups of actions, e.g. (exhaustive examples):
```smalltalk
	(aBuilder deploymentGroup: #readOnly)
		label: 'Make the image read only';
		description: 'Deactivate all the reads and writes on the disk';
		order: 100;
		parent: #cleaning.
```
or only one with some variables:
```smalltalk
	(aBuilder deployment: #readOnlyCleaning)
		label: 'Clean the image folder';
		description: 'Remove the .changes, .sources, and the pharo-local folder';
		actionTarget: [ CRDeploymentSettings ];
		actionTargetSelector: #deploymentFolder:;
		order: 100;
		parent: #readOnly
		with: [ (aBuilder deploymentAttribute: #deploymentFolder)
			order: 0;
			type: #Directory;
			isRelative: false;
			label: 'Path':
			description: 'The path of the folder where the application will be deployed';
			default: #projectName;
			defaultIsDeploymentVariable: true;
		]
```
The parent action must be not empty and inherits of one of the 5 groups defined above.

Descriptions of the selectors (exhaustive list - mandatory item are bold):
- **deployment or deploymentGroup**: define an standard action or a group of actions. The parameter is the identifier of the action and should be unique (no check made however). 
- **#label**: The name that will be displayed in the list.
- #description: The description of the feature.
- #isActivated:  Set to false to desactivate the action (default is true).
- **#parent**: The container of the action. All the actions of a group will be executed the ones after the others.
- **#order**: The number in which the actions will be executed. Low number is executed before the high one. For the attributes, it is the order of the attribute for the actionTargetSelector method
- **#actionTarget**: A clean block (without references to the outside world) whose the returning value will be used to execute #actionTargetSelector. 
- **#actionTargetSelector**: The selector that performs the actions. If the selector needs arguments, #with selector has to be used.
- #with: allows to define arguments for an action 
	- **#type**: The type of the argument: Directory, File, String, number (others can be added but have to be implemented).
	- #isRelative: Only valid if the type is a Directory or file. true if the given path is relative to the project deployment folder.
	- #default: The default value.
	- #defaultIsDeploymentVariable: If true, the #default argument should be a selector to a method in CRDeploymentSettings. You should ensure that setter and getter exist.

## Developement 

### Internals

Cruiser is based on the Pharo settings engine. It uses another pragma to defines the deployment actions.
Some main class highlights:
- CRDeploymentSettingBrowser: the Cruiser browser 
- CRDeploymentSettings is the location where the default settings for deployment are stored
- CRDeploymentGroupDeclaration represents a deployment setting group declaration. 
- CRDeploymentDeclaration represent a deployment setting declaration. 
- CRDeploymentParameterDeclaration represent a deployment setting declaration parameter. 
- CRSkipExecution is used for skip the execution of the other actions on the remote image.

New selectors should be implemented in SettingNodeBuilder and in CRDeploymentDeclaration, CRDeploymentGroupDeclaration, or CRDeploymentParameterDeclaration.

### Features Ideas

- [x] Add tests
- [x] Active checkbox status should be repercuted on the child items
- [x] Settings save and load
- [ ] Scriptable execution of the actions 
- [ ] Self opening of the explorer on the deployment folder location at the end of the execution
- [ ] Add a checkbox for the uses of meta variables
- [ ] Add more tests
- [ ] Add other OS support
- [ ] Progress Bar
- [ ] Add folders that contains the files

### Known issues

- The execution of the operations on the remote image is made with the ProcessWrapper Dll. On Windows, this tool do not give a return value about the success or failure of the execution. For this, a FFI implementation of ProcessWrapper will be needed but the FFI have to be multithreaded in other to execute asynchronuous calls.
- Some features, like the FFI without the sources, are very new and can have some issues



## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FVincentBlondeau%2FCruiser.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FVincentBlondeau%2FCruiser?ref=badge_large)