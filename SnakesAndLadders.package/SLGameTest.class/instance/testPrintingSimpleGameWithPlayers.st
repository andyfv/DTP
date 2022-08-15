as yet unclassified
testPrintingSimpleGameWithPlayers
	| game player1 player2 |
	game := SLGame new tileNumber: 12.
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.	
	game addPlayer: player1; addPlayer: player2.
	
	self 
		assert: game printString
		equals: '[1<Player 1><Player 2>][2][3][4][5][6][7][8][9][10][11][12]'