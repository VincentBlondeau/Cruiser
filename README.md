# Cruiser

Cruiser is a tool to package Pharo applications.
The idea is to quickly convert a application in a development environment to a production one.
A production environment means:
- No writing on the disk
- No access to the source code (by the shortcuts, debugger,...)
- No error displaying on the interface
- The only thing accessible is the developed application 

# How to install

On a latest Pharo 7 image, clone the repository in Iceberg and load the baseline of Cruiser.
Or you can download the builded image on the CI (Work in progress)

# How to deploy you own application

Some default options are defined but you have to add some informations to deploy you own application. To do that, you first need to fill this code template with informations concerning you application:

```
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


# Default Features

The application packaging is highly customizable. The actions are split in 5 groups:

- #initializing group contains the  Initializing Actions. They set up the main paramters for the application like cleaning the deployment folder and define some variables that are reused in the process like the deployment folder location and the name of the project.
- #copying group contains the Copying Actions. These operations prepare the files inside the packaging folder like the VM, the image, and the potential dependencies or resources.
- #configuring group contains  the Configuring Actions. They configure the deployed image by installing requiered packages, configure some tools, etc....
- #cleaning group contains the Cleaning Actions. They are cleaning the to-be-deployed image, like removing the debugger, uninstall the tests classes, close the windows, disables the shortcuts, and allow the image to be read only.
- #finalizing group contains the Finalizing Actions. They allows to finalize the creation of the deployment image by launching the end user application.

Any action or group of actions can be activated or deactivated by clicking on the associated checkbox.

# Developement 

## Internals

## Features Ideas

- Settings save and load
- Scriptable execution of the actions 
- Self opening of the explorer on the deployment folder location at the end of the execution
- Add a checkbox for the uses of meta variables
- Add tests
- Add other OS support
- Progress Bar
- Active checkbox status should be repercuted on the child items

## Known issues

- The execution of the operations on the remote image is made with the ProcessWrapper Dll. On Windows, this tool do not give a return value about the success or failure of the execution. For this, a FFI implementation of ProcessWrapper will be needed but the FFI have to be multithreaded in other to execute asynchronuous calls.


