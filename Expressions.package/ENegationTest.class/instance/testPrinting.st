as yet unclassified
testPrinting 
	self assert: (ENegation expression: (EConstant constant3)) printString
		equals: '-3'