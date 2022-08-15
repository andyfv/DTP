accessing
biggestBelow: anAmount
	"Returns the biggest coin with a value below anAmount. For
	example, {(3 -> 0.5) . (3 -> 0.2) . (5-> 0.1)} biggestBelow:
	0.40 -> 0.2"
	
	| biggest |
	biggest := 0.0.
	bagCoins do: [:each | 
		(each > biggest) & (each < anAmount) 
		ifTrue: [ biggest := each]].
	^ biggest