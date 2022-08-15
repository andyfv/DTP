as yet unclassified
testInitialize
	"Test that new instance of a DieHandle is empty"
	
	| handle |
	handle := DieHandle new.
	self assert: handle diceNumbers equals: 0. 