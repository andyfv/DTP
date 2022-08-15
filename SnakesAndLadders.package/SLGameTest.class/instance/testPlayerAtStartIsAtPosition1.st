as yet unclassified
testPlayerAtStartIsAtPosition1
	| game player |
	game := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	
	game addPlayer: player.
		
	self assert: player position equals: 1.