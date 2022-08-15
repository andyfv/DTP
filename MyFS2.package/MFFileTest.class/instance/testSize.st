tests
testSize

	| el |
	el := MFFile new name: 'babar'; contents: 'Babar et Celeste'.
	self assert: el size equals: 'babar' size + 'Babar et Celeste' size
