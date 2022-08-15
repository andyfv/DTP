as yet unclassified
testCreationWithClassCreationMessage
	| ep1 |
	ep1 := EConstant new value: 6.
	self assert: ((ENegation expression: ep1) evaluateWith: Dictionary new)
		equals: -6