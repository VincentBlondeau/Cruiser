I indicate where the application will be packaged. I set up the a #folderLocation property in the builder to be used by the others plugins 

folder: - AbstractFileReference - the folder that should be used to package the image - default: FileLocator imageDirectory / 'packagedImage'
shouldOverwrite: - Boolean - true if the folder for the packaging has to be deleted before the creation if it exists