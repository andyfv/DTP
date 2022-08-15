as yet unclassified
testCoinsForPaying
	| w paid | 
	w := Wallet new.
	w add: 10 coinsOfValue: 0.50 .
	w add: 10 coinsOfValue: 0.20 .
	w add: 10 coinsOfValue: 0.10 .
	paid := (w coinsFor: 2.5).
	self assert: paid money equals: 2.5.
	self assert: (paid coinsOfValue: 0.5) equals: 5. 