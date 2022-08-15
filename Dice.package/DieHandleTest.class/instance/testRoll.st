as yet unclassified
testRoll
	"Test that rolling a DieHandle with n dices 
	will return a result between n and the sum of
	the faces of each die"
	
	| handle res |
	handle := DieHandle new.
	handle 	
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	res 			:= handle roll.
	100 timesRepeat: 
		[self assert: 
			(res >= handle diceNumbers) 
			& 
			(res <= 16)
		] 
			
				