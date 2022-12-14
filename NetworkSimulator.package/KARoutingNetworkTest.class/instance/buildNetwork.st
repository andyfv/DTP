as yet unclassified
buildNetwork 
	| routers |
	net := KANetwork new.
	
	routers := #(A B C) collect: 
		[:each | KANetworkHub withAddress: each].
	
	net connect: routers first to: routers second.
	net connect: routers second to: routers third.
	net connect: routers third to: routers first.	
		
	#(a1 a2) do: [:addr | 
		net connect: routers first 
			to: (KANetworkNode withAddress: addr)].
	
	#(b1 b2 b3) do: [:addr | 
		net connect: routers second 
			to: (KANetworkNode withAddress: addr)].
	net connect: routers third to: (KANetworkNode withAddress: #c1). 