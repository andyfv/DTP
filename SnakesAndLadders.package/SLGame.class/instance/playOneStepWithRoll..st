initialize
playOneStepWithRoll: aNumber
	| currentPlayer |
	turn := turn + 1.
	currentPlayer := self currentPlayer.
	Transcript show: 
		currentPlayer printString
		, 'drew '
		, aNumber printString 
		, ': '.
	(self canMoveToPosition: currentPlayer position + aNumber)
		ifTrue: [self movePlayer: currentPlayer distance: aNumber ].
	Transcript show: self; cr. 