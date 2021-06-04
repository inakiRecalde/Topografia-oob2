Class {
	#name : #Atomic,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #accessing }
Atomic >> desperdicio [
	^ desperdicio .
]

{ #category : #accessing }
Atomic >> distribucion: unaTopografia [ 
	^ self class = unaTopografia class.
]

{ #category : #'as yet unclassified' }
Atomic >> miDesperdicio [
	^ desperdicio .
]

{ #category : #accessing }
Atomic >> proporcionAgua [
	^ proporcionAgua .
]

{ #category : #accessing }
Atomic >> proporcionAgua: unaTopografia [
	^proporcionAgua = unaTopografia proporcionAgua .
]

{ #category : #accessing }
Atomic >> proporcionTierra [
	^ proporcionTierra .
]

{ #category : #accessing }
Atomic >> proporcionTierra: unaTopografia [
	^ proporcionTierra = unaTopografia proporcionTierra .
]
