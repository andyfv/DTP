playing
addPlayer: aPlayer
	aPlayer position: 1.
	players add: aPlayer.
	(tiles at: 1) addPlayer: aPlayer.