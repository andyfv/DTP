testing
testCountIsSetAndRead
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count = 7.