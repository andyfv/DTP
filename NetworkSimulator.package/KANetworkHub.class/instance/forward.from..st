as yet unclassified
forward: aPacket from: arrivalLink
	self 
		linksTowards: aPacket destinationAddress 
		do: [:link | 
				link destination == arrivalLink source 
				ifFalse: [self send: aPacket via: link]]  