testing
testTwoLocations
	| office home |
	office := TemperatureConverter new location: 'office'.
	office measureCelsius: 19.
	office measureCelsius: 21.
	self 	assert: office location 
			equals: 'office'.
	self 	assert: office measureCount 
			equals: 2.
			
	home := TemperatureConverter new location: 'home'.
	home measureFahrenheit: 22.
	home measureFahrenheit: 22.		
	home measureFahrenheit: 22.
	self 	assert: home location 
			equals: 'home'.
	self 	assert: home measureCount 
			equals: 3.