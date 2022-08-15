as yet unclassified
testBiggestCoins
	| w | 
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50 .
	w add: 10 coinsOfValue: 0.20 .
	w add: 10 coinsOfValue: 0.10 .
	self assert: (w biggest2) equals: 0.50. 