as yet unclassified
testPlayOneStepOnExactFinish
	| game player1 player2 |
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.
	game := SLGame new 
		tileNumber: 12;
		setLadderFrom: 2 to: 6;
		setLadderFrom: 7 to: 9;
		setSnakeFrom: 11 to: 5.   
		
	game addPlayer: player1; addPlayer: player2.
	
	game playOneStepWithRoll: 11.
	self assert: player1 position equals: 12.
	self assert: (game tileAt: 1) players size equals: 1.
	self assert: ((game tileAt: 12) includesPlayer: player1).
	self assert: game isOver.