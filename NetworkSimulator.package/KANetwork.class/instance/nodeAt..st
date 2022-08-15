searching
nodeAt: anAddress
	^ self 
		nodeAt: anAddress
		ifNone: [ NotFound signal: anAddress]