printing
printOn: aStream 
	super printOn: aStream.
	aStream nextPutAll: ' with value: ' , self count printString.