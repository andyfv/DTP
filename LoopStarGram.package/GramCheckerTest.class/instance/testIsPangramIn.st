testing
testIsPangramIn
	self assert: ('The quick brown fox jumps over the lazy dog'	
		isPangramIn: 'abcdefghijklmnopqrstuvwxyz').
	self assert: ('les poux papas et les poux pas papas' 
		isPangramIn: 'apouxetl').
