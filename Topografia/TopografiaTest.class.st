Class {
	#name : #TopografiaTest,
	#superclass : #Test,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
TopografiaTest >> TestigualA [
	self assert:  (topAgua igualA: topTierra) not. 
	self assert:  (topCompuesta2  igualA: topCompuesta)not. 
	self assert:  (topCompuesta2  igualA: topCompuesta3 ).
	
]
