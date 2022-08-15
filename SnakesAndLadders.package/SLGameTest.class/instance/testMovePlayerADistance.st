as yet unclassified
testMovePlayerADistance
	| game player |
	game 	 := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	
	game addPlayer: player.
	game movePlayer: player distance: 4.
	
	self assert: player position equals: 5.
	self assert: (game tileAt: 1) players isEmpty.
	self assert: ((game tileAt: 5) includesPlayer: player).  
	