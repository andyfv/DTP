testing
testAllIsogramSet
	self isograms 		do: [:word | self assert: word isIsogramSet ].
	self notIsograms 	do: [:word | self deny: word isIsogramSet ]