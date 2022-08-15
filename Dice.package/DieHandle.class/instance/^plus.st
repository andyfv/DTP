as yet unclassified
+ aDieHandle
	| handle |
	handle := DieHandle new.
	self dice 			do: [:each | handle addDie: each].
	aDieHandle dice 	do: [:each | handle addDie: each].
	^ handle