initialize
initialize
	outgoingLinks 	:= Set new.
	arrivedPackets := OrderedCollection new.
	loopback 		:= KANetworkLink from: self to: self.