as yet unclassified
testCoinsAdditionISWorking
	| w | 
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 6 coinsOfValue: 0.50.
	self assert: (w coinsOfValue: 0.5) equals: 8 