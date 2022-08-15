as yet unclassified
from: sourceAddress to: destinationAddress payload: anObject
	| packet |

	^ packet := self new initializeSource: sourceAddress 
								destination: destinationAddress 
								payload: anObject.
 