removing
biggestAndRemove
	| b |
	b := self biggest.
	self removeCoin: b.
	^ b
