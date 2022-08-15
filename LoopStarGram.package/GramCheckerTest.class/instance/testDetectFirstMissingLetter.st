testing
testDetectFirstMissingLetter
	self 	assert: 	('the quick brown fox jumps over the lzy dog'
						detectFirstMissingLetterFor: 
						'abcdefghijklmnopqrstuvwxyz'
						)
			equals: 'a'.
	self 	assert: 	('the uick brown fox jumps over the lazy dog'
						detectFirstMissingLetterFor: 
						'abcdefghijklmnopqrstuvwxyz'
						)
			equals: 'q'.


