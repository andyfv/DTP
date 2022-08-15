playing
setLadderFrom: aSourcePosition to: aTargetPosition
	| fromTile toTile|
	toTile 	:= self tileAt: aTargetPosition.
	fromTile := SLLadderTile new 
		position: aSourcePosition;
		to: toTile.
	tiles at: aSourcePosition put: fromTile.  