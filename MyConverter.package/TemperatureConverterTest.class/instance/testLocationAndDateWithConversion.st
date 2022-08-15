testing
testLocationAndDateWithConversion

	| converter |
	converter := TemperatureConverter new location: 'Lille'.
	converter measureFahrenheit: 86.
	converter measureFahrenheit: 50.
	self 	assert: converter measureCount 
			equals: 2.
	self 	assert: converter dates 
			equals: {Date today . Date today} asOrderedCollection. 
	self 	assert: converter temperatures 
			equals: { 
				converter convertFahrenheit: 86 .
				converter convertFahrenheit: 50
				} asOrderedCollection.