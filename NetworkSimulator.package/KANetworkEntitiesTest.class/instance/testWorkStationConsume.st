as yet unclassified
testWorkStationConsume
	| pc wrk link packet |
	packet 	:= KANetworkPacket from: #pc to: #workstation payload: #payload.
	pc 	 	:= KANetworkNode withAddress: #pc.
	wrk 		:= KANetworkWorkstation withAddress: #workstation.
	link 		:= KANetworkLink from: pc to: wrk.
	
	link attach.
	self assert: (wrk receivedCount) equals: 0.			"Test initial value"
	
	pc send: packet.
	link transmit: packet.
	self assert: (wrk receivedCount) equals: 1. 			"Test single increment"
	
	pc send: packet.
	link transmit: packet.
	self assert: (wrk receivedCount) equals: 2.			"Test second increment"
	