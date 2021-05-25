Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'proporcionAgua',
		'proporcionTierra'
	],
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Topografia >> distribucion [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> igualA: otraTopografia [
	(self proporcionAgua = otraTopografia proporcionAgua &
		self proporcionTierra = otraTopografia proporcionTierra &
		self distribucion  = otraTopografia distribucion )
			ifTrue: [^true] 
			ifFalse: [^false].
]

{ #category : #accessing }
Topografia >> proporcionAgua [
	self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionTierra [
	self subclassResponsibility 
]
