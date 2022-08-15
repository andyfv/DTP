as yet unclassified
testTileForAtDistance
	| game player |
	game := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	
	game addPlayer: player.
	
	self assert: (game tileFor: player atDistance: 4) position equals: 5.  
	