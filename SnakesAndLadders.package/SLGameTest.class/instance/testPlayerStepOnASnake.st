as yet unclassified
testPlayerStepOnASnake
	| game player |
	player := SLPlayer new name: 'Player'.
	game 	 := SLGame new tileNumber: 12;
		setLadderFrom: 2 to: 6;
		setLadderFrom: 7 to: 9;
		setSnakeFrom: 11 to: 5.
	
	game addPlayer: player.
	game movePlayer: player distance: 10. 
	
	self assert: player position equals: 5.
	self assert: (game tileAt: 1) players isEmpty.  
	self assert: ((game tileAt: 5) includesPlayer: player).