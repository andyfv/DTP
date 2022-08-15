as yet unclassified
testSeveralPlayersAtStart
	
	| game player1 player2 |
	game 		:= SLGame new tileNumber: 12.
	player1 	:= SLPlayer new name: 'Player1'.
	player2 	:= SLPlayer new name: 'Player2'.
	
	game addPlayer: player1; addPlayer: player2.
	
	self assert: ((game tileAt: 1) includesPlayer: player1). 
	self assert: ((game tileAt: 1) includesPlayer: player2).