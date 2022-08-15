as yet unclassified
testGameIsOver
	| game player |
	game 	 := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	
	game addPlayer: player.
	self assert: player position equals: 1.		"Test player is moved by 1 tile"
	
	game movePlayer: player distance: 1.			
	self deny: game isOver.								"Test game is NOT over"
	
	game movePlayer: player distance: 10.
	self assert: player position equals: 12.		"Test player is on last tile"
	self assert: game isOver. 							"Test game is over when player is
																on the last tile"