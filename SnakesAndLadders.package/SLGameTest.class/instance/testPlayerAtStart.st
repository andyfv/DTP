as yet unclassified
testPlayerAtStart
	| game player |
	game := SLGame new tileNumber: 12.
	player := SLPlayer new name: 'Player'.
	game addPlayer: player.
	self assert: ((game tileAt: 1) includesPlayer: player). 
	
	