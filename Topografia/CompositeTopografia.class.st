"
Ejercicio 3.c (entregable)
Extienda el ejercicio de Topografías de la siguiente forma:
1.- Calcular la proporción del desperdicio. El 0.15 de la topografía de agua es desperdicio. El 0.05
de la tierra es desperdicio. Para las mixtas, el desperdicio es el promedio de desperdicio de los
terrenos que la conforman con un ajuste. Si el promedio es menor que 0.5 (es decir, la mitad), se
lo multiplica por 1.03 (es decir, se incrementa un 3%).
2.- Agregue una Topografía Feedlot. Un feedlot es un caso particular de una topografía de
Tierra, por lo cual, las proporciones de tierra y agua de un feedlot son las mismas que las de
una topografía de tierra. Sin embargo, el desperdicio de un feedlot es de 0.9.
Nota: *No* debe extender la comparación del igual ni escribir casos de prueba.







Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	topografias:		<Object>


    Implementation Points
"
Class {
	#name : #CompositeTopografia,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografia
}

{ #category : #'instance creation' }
CompositeTopografia class >> new: unaTop1 top2: unaTop2 top3: unaTop3 top4: unaTop4 [
	^self new top1: unaTop1 top2: unaTop2 top3: unaTop3 top4: unaTop4
]

{ #category : #accessing }
CompositeTopografia >> desperdicio [
		|promedio|
		
		promedio:= self miDesperdicio.
		(promedio < 0.5 ) 
			ifTrue:[ ^ promedio * 1.03] 
			ifFalse:[^promedio].
]

{ #category : #accessing }
CompositeTopografia >> distribucion: unaTopografia [
	|id|
	id:= 0.
	(unaTopografia class = self class)
	ifTrue:[
		(self topografias size = unaTopografia topografias size)
		ifTrue: [  ^ topografias allSatisfy: [ :top | 
				id:= id + 1.
				top distribucion: (unaTopografia topografias at: id) ] ]
		ifFalse: [ ^false ]. ]
	ifFalse: [ ^false ].
]

{ #category : #initialization }
CompositeTopografia >> initialize [
	topografias := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
CompositeTopografia >> miDesperdicio [
	^(topografias sumNumbers:  [ :topografia | topografia desperdicio]) / 4 
]

{ #category : #accessing }
CompositeTopografia >> proporcionAgua [
	^ (topografias sumNumbers: [ :topografia | topografia proporcionAgua  ]) / 4 .
]

{ #category : #accessing }
CompositeTopografia >> proporcionAgua: unaTopografia [ 
	^ self proporcionAgua = unaTopografia proporcionAgua .
]

{ #category : #accessing }
CompositeTopografia >> proporcionTierra [
	^ (topografias sumNumbers: [ :topografia | topografia proporcionTierra   ]) / 4 .
]

{ #category : #accessing }
CompositeTopografia >> proporcionTierra: unaTopografia [
	^ self proporcionTierra = unaTopografia proporcionTierra .
]

{ #category : #'as yet unclassified' }
CompositeTopografia >> top1: unaTop1 top2: unaTop2 top3: unaTop3 top4: unaTop4 [
	topografias add: unaTop1 .
	topografias add: unaTop2 .
	topografias add: unaTop3 .
	topografias add: unaTop4 .
]

{ #category : #accessing }
CompositeTopografia >> topografias [
	^ topografias
]
