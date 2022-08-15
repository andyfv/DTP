testing
testInitializeIsEmpty
	"Test that newly created MFDirectory instance has the variable 
	files initialiezed to empty OrdedCollection"
	| dir |
	dir := MFDirectory new.
	self assert: dir files isEmpty.