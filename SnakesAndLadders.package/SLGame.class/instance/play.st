initialize
play
	Transcript show: self; cr.
	[ self isOver not] whileTrue: [
		self playOneStepWithRoll: 6 atRandom ].