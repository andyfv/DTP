as yet unclassified
testPrinting
	| tile |
	tile := SLTile new position: 6.
	self assert: tile printString equals: '[6]'.	