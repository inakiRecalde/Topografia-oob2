Class {
	#name : #CompositeTopografiaTest,
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
CompositeTopografiaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
topAgua := Agua new.
topAgua2 := Agua new.
topTierra  := Tierra new.
topFeed := Feedlot new.
	
topCompuesta := CompositeTopografia new: topAgua top2: topAgua top3:topAgua2  top4: topTierra.
topCompuesta2 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
topCompuesta3 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
]

{ #category : #tests }
CompositeTopografiaTest >> testDesperdicio [
	self assert: ( topAgua desperdicio = 0.15).
	self assert: ( topTierra desperdicio = 0.05) .
	self assert: ( topCompuesta desperdicio = 0.12874999999999998).
	self assert: ( topCompuesta2 desperdicio = 0.342153125).
	
]
