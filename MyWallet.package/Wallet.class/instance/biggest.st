accessing
biggest
	"Returns the biggest coin with a value below anAmount. For
		example, {(3 -> 0.5) . (3 -> 0.2) . (5-> 0.1)} biggest -> 0.5"

	| biggest |
	biggest := 0.0.
	bagCoins do: [:each | each > biggest ifTrue: [ biggest := each]].
	^ biggest