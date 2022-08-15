testing
testFToCScale

	| converter results expectedCelsuis |
	
	converter 	:= TemperatureConverter new.
	results 		:= (converter convertFahrenheitFrom: 50 to: 70 by: 2).
	expectedCelsuis := #(
		10.0
		11.1
		12.2
		13.3
		14.4
		15.5
		16.6
		17.7
		18.8
		20.0
		21.1).
		
	results with: expectedCelsuis do:
		[:res :cel | res value closeTo: cel].