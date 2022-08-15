as yet unclassified
testAddingTwiceTheSameDice
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumbers equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumbers equals: 2.  