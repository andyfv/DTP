printing
printOn: aStream
	aStream << '['.
	aStream << position printString.
	players do: [:each| each printOn: aStream].
	aStream << ']'.