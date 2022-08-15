as yet unclassified
testCreationAdding
	| handle |
	handle := 
		DieHandle new
		addDie: (Die withFaces: 6);	
		addDie: (Die withFaces: 6);
		yourself.
	self assert: handle diceNumbers equals: 2. 