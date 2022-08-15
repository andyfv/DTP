printing
printOn: aStream
	parent isNil ifFalse: [ 
		parent printOn: aStream ].
	aStream << name