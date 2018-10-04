private
printOn: aWriteStream parameter: param value: s
	aWriteStream << param.
	aWriteStream << '="'.
	aWriteStream << s.
	aWriteStream << '"'.
	aWriteStream << OSPlatform current lineEnding