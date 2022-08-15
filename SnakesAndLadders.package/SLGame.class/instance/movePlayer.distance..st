playing
movePlayer: aPlayer distance: anInteger
	| sourceTile targetTile |
	sourceTile := self tileOfPlayer: aPlayer.		"Current tile"
	targetTile := self tileFor: aPlayer 			"Destination tile"
							atDistance: anInteger.
	
	sourceTile releasePlayer: aPlayer.				"Release from old tile" 
	targetTile acceptPlayer: aPlayer.				"Move to new tile"