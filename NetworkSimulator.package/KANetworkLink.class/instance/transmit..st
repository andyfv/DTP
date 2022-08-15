as yet unclassified
transmit: aPacket
	"Transmit aPacket to the destination node of the receiver link."
	
	destination receive: aPacket from: self.
	packetsToTransmit remove: aPacket ifAbsent: [self notYetImplemented] 