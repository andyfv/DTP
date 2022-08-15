playing
setSnakeFrom: aSourcePosition to: aTargetPosition
	| fromTile toTile |
	toTile 	:= self tileAt: aTargetPosition.
	fromTile := SLSnakeTile new 
		position: aSourcePosition;
		to: toTile.
	tiles at: aSourcePosition put: fromTile.  