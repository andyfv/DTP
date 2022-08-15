accessing
money
	^ bagCoins inject: 0 into: [ :sum :each | sum + each].
	