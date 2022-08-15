as yet unclassified
testWorkStationPrinting
	| pc wrk link packet |
	packet := KANetworkPacket
				from: #pc
				to: #workstation
				payload: #payload.
	pc := KANetworkNode withAddress: #pc.
	wrk := KANetworkWorkstation withAddress: #workstation.
	link := KANetworkLink from: pc to: wrk.
	
	link attach.
	
	self assert: wrk printString equals: 'Received Count: 0'. 	"Initial count"
	
	pc send: packet.
	self assert: wrk printString equals: 'Received Count: 0'. 	"Not yet received"
	link transmit: packet.
	self assert: wrk printString equals: 'Received Count: 1'. 	"One packet received"
	
	pc send: packet.
	self assert: wrk printString equals: 'Received Count: 1'. 	"Not yet received"
	link transmit: packet.
	self assert: wrk printString equals: 'Received Count: 2'    "Second packet received"