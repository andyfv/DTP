accessing
printOn: aStream
	aStream << '['.
	self printInsideOn: aStream.
	aStream << ']'.	