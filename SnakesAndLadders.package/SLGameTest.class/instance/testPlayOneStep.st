as yet unclassified
testPlayOneStep
	| game player1 player2 |
	game := SLGame new tileNumber: 12.
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.
	
	game addPlayer: player1; addPlayer: player2.
	
	self assert: player1 position equals: 1.
	
	game playOneStepWithRoll: 3.
	self assert: player1 position equals: 4.
	self assert: (game tileAt: 1) players size equals: 1.
	self assert: ((game tileAt: 4) includesPlayer: player1).