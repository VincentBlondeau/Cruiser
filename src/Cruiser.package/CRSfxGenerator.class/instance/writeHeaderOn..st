private-writing
writeHeaderOn: aStream
	aStream << ';!@Install@!UTF-8!'.
	aStream << OSPlatform current lineEnding