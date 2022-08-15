convert
convertFahrenheitFrom: low to: high by: step
	"Returns a collection of pairs (f,c) for all the fahrenheit
	temperatures from low to high"
	^ (low to: high by: step) 
		collect: [:f | f -> (self convertFahrenheit: f)]