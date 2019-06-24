Class {
	#name : #DiceBagResult,
	#superclass : #Object,
	#instVars : [
		'rolls'
	],
	#category : #Dice
}

{ #category : #accessing }
DiceBagResult class >> rolls: aCollection [

	^ self new 
		rolls: aCollection;
		yourself
]

{ #category : #'math functions' }
DiceBagResult >> average [
	
	^ (self rolls sum / self rolls size) asInteger
]

{ #category : #'math functions' }
DiceBagResult >> max [
	
	^ self rolls max
]

{ #category : #printing }
DiceBagResult >> printOn: stream [

	stream 
		print: self rolls; cr;
		nextPutAll: 'SUM: '; print: self sum; cr;
		nextPutAll: 'MAX: '; print: self max; cr;
		nextPutAll: 'AVG: '; print: self average; cr
]

{ #category : #accessing }
DiceBagResult >> rolls [
	^ rolls
]

{ #category : #accessing }
DiceBagResult >> rolls: anObject [
	rolls := anObject
]

{ #category : #'math functions' }
DiceBagResult >> sum [
	
	^ self rolls sum
]
