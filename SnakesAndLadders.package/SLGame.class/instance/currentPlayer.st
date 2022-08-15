accessing
currentPlayer 
	| rest playerIndex |
	rest := (turn \\ players size).
	playerIndex := (rest isZero
		ifTrue: [players size]
		ifFalse: [rest]).
	^ players at: playerIndex
	