as yet unclassified
printOn: aStream
	aStream << '['.
	targetTile position printOn: aStream.
	aStream << '<-'.
	position printOn: aStream.
	aStream << ']'.