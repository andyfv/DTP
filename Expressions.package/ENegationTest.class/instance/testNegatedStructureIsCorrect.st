as yet unclassified
testNegatedStructureIsCorrect
	| exp |
	exp := EConstant value: 11.
	self assert: exp negated class equals: ENegation.
	self assert: exp negated negated equals: exp. 