testing
testDecrement
	| c |
	c := Counter new.
	c count: 2;
		decrement;
		decrement.
	self assert: c count = 0. 