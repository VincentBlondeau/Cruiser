private
create7zArchive
	PhLProcessWrapper waitForCommand: 'C:\"Program Files"\7-Zip\7z.exe a "' ,  CRDeploymentSettings current folder fullName, '\' ,CRDeploymentSettings current title , '.7z" ',  CRDeploymentSettings current folder fullName, '\*"' .