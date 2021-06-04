Class {
	#name : #CompositeTopografiaTest,
	#superclass : #Test,
	#category : #Topografia
}

{ #category : #tests }
CompositeTopografiaTest >> testDesperdicio [
	self assert: ( topAgua desperdicio = 0.15) .
]
