*Cruiser
evaluate: aStream
	| result |

	[ 
	result := Smalltalk compiler evaluate: aStream.
	 ]
		on: Error
		do: [ :error | self handleError: error ]