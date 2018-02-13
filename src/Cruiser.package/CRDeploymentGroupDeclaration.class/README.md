I representing a deployment setting group declaration. 
I am a node of a deployment setting. I am here to group the action of the same sense toghether to be able to execute them in the right order. I know also who should perfom the action and where (on remote or local image).

My parent is a CRDeploymentGroupDeclaration and my children are a  CRDeploymentDeclaration. I am instancied by the SettingsTreeBuilder.

Public API and Key Messages

5 groups are originaly defined as root steps:
#initializing: is meant to setup some variables for the deployment and to clean the application deployment folder. It can also download some artifacts to prepare the deployment.  This operation is executed locally.
#copying: is meant to copy the image, vm, and essentials files into the deployment folder. This operation is executed locally.
#configuring: is meant to install code, execute configuring scripts remotly on the deployment image. 
#cleaning: is meant to clean the image and the deployment folder before the execution of the application in itself  
#finalizing: is meant to do the really last steps of the deployment packaging, i.e. execute the deployment of the application on the image and zip the folder by example.


Example:
deploymentGroupsSettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deploymentGroup: #initializing)
		label: 'Initializing Actions';
		description: 'Operations to set up the main paramters for the application';
		icon: (self iconNamed: #smallNew);
		order: 00.		

=== N.B ===
It is tested only on Windows and it is very likely that is does not work on other plateforms.