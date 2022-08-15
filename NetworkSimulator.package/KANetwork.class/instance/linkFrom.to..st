searching
linkFrom: sourceAddress to: destinationAddress
	^ links
		detect: [:anyLink | 
			anyLink source address = sourceAddress 
			and: 
			[anyLink destination address = destinationAddress ]]
		ifNone: NotFound