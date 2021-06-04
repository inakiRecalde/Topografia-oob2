Class {
	#name : #Feedlot,
	#superclass : #Tierra,
	#category : #Topografia
}

{ #category : #initialization }
Feedlot >> initialize [
	self initializeAguaTierra .
	desperdicio := 0.9
]
