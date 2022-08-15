as yet unclassified
printInsideOn: aStream
	super printInsideOn: aStream.
	
	aStream << '->'.
	targetTile position printOn: aStream.
	