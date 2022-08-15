initialize
canMoveToPosition: aNumber
	"A move can be made only if we stay within the game.
	This implies that the player should draw an exact number
	to land on the last tile."
	
	^ aNumber <= tiles size	