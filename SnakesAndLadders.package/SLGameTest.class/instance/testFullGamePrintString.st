as yet unclassified
testFullGamePrintString
	| game |
	game := SLGame new tileNumber: 12.
	game
		setLadderFrom: 2 to: 6;
		setLadderFrom: 7 to: 9;
		setSnakeFrom: 11 to: 5.
	
	self 
		assert: game printString 
		equals: '[1][2->6][3][4][5][6][7->9][8][9][10][5<-11][12]'