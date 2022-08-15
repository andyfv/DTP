testing
canPay: anAmount
"returns true when we can pay the amount of money"

	^ (self money - anAmount) > 0.0