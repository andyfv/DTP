as yet unclassified
testPrintingSnake
	| tile |
	tile := SLSnakeTile new 
		position: 11;
		to: (SLTile new position: 5).
	
	self assert: tile printString equals: '[5<-11]' 