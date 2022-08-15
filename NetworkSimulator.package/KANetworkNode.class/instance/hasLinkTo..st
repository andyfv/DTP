testing
hasLinkTo: anotherNode
	^ (outgoingLinks collect: [:link | link destination]) 
		includes: anotherNode 