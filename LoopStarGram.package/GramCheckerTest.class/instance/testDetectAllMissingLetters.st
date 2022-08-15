testing
testDetectAllMissingLetters
	self 	assert: 	('the quick brown fox jumps over the lzy do'
						detectAllMissingLettersFor:  
						'abcdefghijklmnopqrstuvwxyz'
						)
			equals: #($a $g) asSet.
	self 	assert: 	('the uick brwn fx jumps ver the lazy dg'
						detectAllMissingLettersFor:  
						'abcdefghijklmnopqrstuvwxyz'
						)
			equals: #($q $o) asSet.


