testing
testLocationAndDate
	| office |
	office := TemperatureConverter new location: 'office'.
	
	"perform two measures that are logged: "
	office measureCelsius: 19.
	office measureCelsius: 21.
	
	"We got effectively two measures"
	self assert: office measureCount = 2.
	
	"All the measures were done today"
	self 	assert: office dates 
			equals: {Date today . Date today} asOrderedCollection.
		
	"We logged the correct temperature"
	self 	assert: office temperatures 
			equals: {19 . 21} asOrderedCollection .