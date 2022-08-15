initialize
buildNetwork
	"1. Single unconnected node"
	alone := KANetworkNode withAddress: #alone.
	
	"2. Network of connected nodes"
	net := KANetwork new.
	
	"2.1. Hub inside the network"
	hub := KANetworkHub withAddress: #hub.
	#(mac pc1 pc2 pcn) do: [:addr |
		| node |
		node := KANetworkNode withAddress: addr.
		net connect: node to: hub
		].
	"2.2. Two nodes (Ping-Pong) inside the network"
	net 
		connect: (KANetworkNode withAddress: #ping) 
		to: (KANetworkNode withAddress: #pong). 
	
	