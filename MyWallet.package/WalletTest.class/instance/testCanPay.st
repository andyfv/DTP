as yet unclassified
testCanPay
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50 .
	w add: 3 coinsOfValue: 0.20 .
	w add: 1 coinsOfValue: 0.02 .
	w add: 5 coinsOfValue: 0.05 .
	self deny: (w canPay: 2).
	self assert: (w canPay: 0.50). 