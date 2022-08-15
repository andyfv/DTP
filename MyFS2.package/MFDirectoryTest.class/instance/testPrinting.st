tests
testPrinting

	| el1 el2 |
	el1 := MFDirectory new name: 'comics'.
	el2 := MFDirectory new name: 'oldcomics'.
	el1 addElement: el2.
	self assert: el1 printString equals: 'comics/'.
	self assert: el2 printString equals: 'comics/oldcomics/'