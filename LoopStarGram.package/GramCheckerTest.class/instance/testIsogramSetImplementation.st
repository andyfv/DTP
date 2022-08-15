testing
testIsogramSetImplementation.
	self assert: 	'pharo' isIsogramSet.
	self deny: 		'phaoro' isIsogramSet.