Class {
	#name : #CompositeTopografia,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
CompositeTopografia >> distribucion [
	^topografias 
]

{ #category : #initialization }
CompositeTopografia >> initialize [
	topografias := OrderedCollection new.
]

{ #category : #accessing }
CompositeTopografia >> proporcionAgua [
	^ (topografias sumNumbers: [ :topografia | topografia proporcionAgua  ]) / 4 .
]

{ #category : #accessing }
CompositeTopografia >> proporcionTierra [
	^ (topografias sumNumbers: [ :topografia | topografia proporcionTierra   ]) / 4 .
]

{ #category : #accessing }
CompositeTopografia >> topografias [
	^ topografias
]

{ #category : #accessing }
CompositeTopografia >> topografias: anObject [
	(topografias size < 4)
	ifTrue: (topografias add: anObject)
]
