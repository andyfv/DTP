as yet unclassified
printInsideOn: aStream
	super printInsideOn: aStream.
	
	aStream << '<-'.
	position printOn: aStream.
	