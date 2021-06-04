Class {
	#name : #Atomic,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Atomic >> desperdicio [
	^ desperdicio .
]

{ #category : #accessing }
Atomic >> distribucion: unaTopografia [ 
	^ self class = unaTopografia class.
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
