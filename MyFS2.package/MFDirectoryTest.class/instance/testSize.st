tests
testSize

	| p2 el |
	el := MFFile new name: 'babar'.
	p2 := MFDirectory new name: 'oldcomics'.
	p2 addElement: el. 
	self assert: p2 size equals: 'oldcomics' size + 'babar' size + 2