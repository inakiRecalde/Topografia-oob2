Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'proporcionAgua',
		'proporcionTierra',
		'desperdicio',
		'topAgua',
		'topTierra',
		'topCompuesta',
		'topCompuesta2',
		'topAgua2',
		'topCompuesta3',
		'topFeed'
	],
	#category : #Topografia
}

{ #category : #running }
TopografiaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
topAgua := Agua new.
topAgua2 := Agua new.
topTierra  := Tierra new.
topFeed := Feedlot new.
	
topCompuesta := CompositeTopografia new: topAgua top2: topAgua top3:topAgua2  top4: topTierra.
topCompuesta2 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
topCompuesta3 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
]

{ #category : #'as yet unclassified' }
TopografiaTest >> testIgualA [
	self assert:  (topAgua igualA: topTierra) not. 
	self assert:  (topCompuesta2  igualA: topCompuesta)not. 
	self assert:  (topCompuesta2  igualA: topCompuesta3 ).
	
]

{ #category : #tests }
TopografiaTest >> testProporcion [
	self assert: (topAgua proporcionAgua: topAgua2).
	self assert: (topAgua proporcionAgua: topTierra)not.
	self assert: (topCompuesta2 proporcionAgua: topCompuesta3 ).
	self assert: (topCompuesta2 proporcionAgua: topCompuesta )not.
	self assert: (topCompuesta2 proporcionTierra: topCompuesta3 ).
	self assert: (topCompuesta2 proporcionTierra: topCompuesta )not.
]
