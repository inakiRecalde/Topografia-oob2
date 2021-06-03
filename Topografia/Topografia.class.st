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
	proporcionAgua:		<Object>
	proporcionTierra:		<Object>


    Implementation Points
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'proporcionAgua',
		'proporcionTierra',
		'topografias',
		'desperdicio'
	],
	#category : #Topografia
}

{ #category : #accessing }
Topografia >> desperdicio [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> distribucion: unaTopografia [ 
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> igualA: otraTopografia [
	(( self proporcionAgua: otraTopografia) &
		(self proporcionTierra: otraTopografia) &
		(self  distribucion: otraTopografia))
			ifTrue: [^true] 
			ifFalse: [^false].
]

{ #category : #initialization }
Topografia >> initialize [
	topografias := OrderedCollection new.
]

{ #category : #accessing }
Topografia >> proporcionAgua [
	self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionAgua: unaTopografia [ 
	self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionTierra [
	self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionTierra: unaTopografia [ 
	self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> topografias [
	^ topografias
]
