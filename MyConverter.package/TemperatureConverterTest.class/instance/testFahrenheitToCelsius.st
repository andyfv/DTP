testing
testFahrenheitToCelsius
	| converter |
	
	converter := TemperatureConverter new.
	self 	assert: ((converter convertFahrenheit: 86) truncateTo: 0.1)
			equals: 30.0.
	self 	assert: ((converter convertFahrenheit: 50) truncateTo: 0.1) 
			equals: 10.