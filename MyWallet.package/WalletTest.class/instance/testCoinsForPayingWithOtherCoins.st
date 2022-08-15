as yet unclassified
testCoinsForPayingWithOtherCoins
	| w paid |
	w := Wallet new.
	w add: 1 coinsOfValue: 0.50.
	w add: 10 coinsOfValue: 0.20.
	w add: 10 coinsOfValue: 0.10.
	paid := (w coinsFor: 2.4).
	self assert: paid money equals: 2.4.
	self assert: (paid coinsOfValue: 0.5) equals: 1.
	self assert: (paid coinsOfValue: 0.2) equals: 9.
