testing
testIsEnglishPangram
	self assert: 
		'The quick brown fox jumps over the lazy dog' isEnglishPangram.
	self deny:
		'The quick brown fox jumps over the dog' isEnglishPangram.
