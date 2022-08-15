as yet unclassified
testAddOneCoin
	| w |
	w := Wallet new.
	w addCoin: 0.50.
	self assert: (w coinsOfValue: 0.50) equals: 1.
	self assert: (w money) equals: 0.5.