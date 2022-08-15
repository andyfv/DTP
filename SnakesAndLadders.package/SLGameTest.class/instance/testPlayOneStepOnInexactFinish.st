as yet unclassified
testPlayOneStepOnInexactFinish
	| game player1 player2 |
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.
	game := SLGame new 
		tileNumber: 12;
		setLadderFrom: 2 to: 6;
		setLadderFrom: 7 to: 9;
		setSnakeFrom: 11 to: 5.   
		
	game addPlayer: player1; addPlayer: player2.
	
	"Player 1 moves"
	game playOneStepWithRoll: 9.
	self assert: player1 position equals: 10.
	self assert: ((game tileAt: 10) includesPlayer: player1).
	
	"Player 2 moves"
	game playOneStepWithRoll: 2.
	
	"Player 1 tries to move but stays at the same position"
	game playOneStepWithRoll: 5.
	self assert: player1 position equals: 10.
	self assert: ((game tileAt: 10) includesPlayer: player1).
	self deny: game isOver.