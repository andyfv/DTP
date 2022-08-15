as yet unclassified
testPrintingLadder
	| tile |
	tile := SLLadderTile new 
		position: 2;
		to: (SLTile new position: 6).
	
	self assert: tile printString equals: '[2->6]' 