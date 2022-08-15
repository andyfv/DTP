as yet unclassified
testCheckingSimpleGame
	| game |
	game := SLGame new tileNumber: 12.
	self assert: game tileNumber equals: 12. 