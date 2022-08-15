as yet unclassified
testPlayTwoSteps
	| game player1 player2 |
	game 	  := SLGame new tileNumber: 12.
	player1 := SLPlayer new name: 'Player 1'.
	player2 := SLPlayer new name: 'Player 2'.
	
	game addPlayer: player1; addPlayer: player2.
	
	game playOneStepWithRoll: 3.
	game playOneStepWithRoll: 2.
	
	"Test both players have moved from tile 1"
	self assert: (game tileAt: 1) players size equals: 0.	
			
	"Test player2 has moved"
	self assert: player1 position equals: 4.
	self assert: ((game tileAt: 4) includesPlayer: player1).
	
	"Test player1 has moved"
	self assert: player2 position equals: 3.
	self assert: ((game tileAt: 3) includesPlayer: player2). 