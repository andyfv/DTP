as yet unclassified
testTileOfPlayer
	| game player |
	game := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	
	game addPlayer: player.
	
	self assert: (game tileOfPlayer: player) position equals: 1. 