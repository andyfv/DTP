printing
printInsideOn: aStream
	super printInsideOn: aStream.
	
	players do: [:each| each printOn: aStream].
	