as yet unclassified
testRemoveCoins
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	w add: 1 coinsOfValue: 0.02.
	w add: 5 coinsOfValue: 0.05.
	w remove: 2 coinsOfValue: 0.2 .
	self assert: ((w money) closeTo: 1.47). 