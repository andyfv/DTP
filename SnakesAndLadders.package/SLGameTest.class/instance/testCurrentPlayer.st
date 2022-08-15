as yet unclassified
testCurrentPlayer
	| game player1 player2 |
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.
	game := SLGame new tileNumber: 12.
		
	game addPlayer: player1; addPlayer: player2.
	
	game turn: 1.
	self assert: game currentPlayer equals: player1.
	
	game turn: 2.
	self assert: game currentPlayer equals: player2.
	
	game turn: 3.
	self assert: game currentPlayer equals: player1. 