testing
testEvaluate
	"Sending evaluate message returns its value"
	
	self assert: ((EConstant new value: 5) evaluateWith: Dictionary new) 
			equals: 5.