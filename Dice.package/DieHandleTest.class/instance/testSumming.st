as yet unclassified
testSumming 
	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumbers equals: 5.