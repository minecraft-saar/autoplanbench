(define (problem grid-5)
(:domain grid-visit-all)
(:objects 
	place_0
	place_1
	place_2
	place_3
	place_4
	place_5
	place_6
	place_7
	place_8
	place_9
	place_10
- place 
        
)
(:init
	(at-robot place_6)
	(visited place_6)
	(connected place_1 place_3)
 	(connected place_2 place_5)
 	(connected place_2 place_3)
 	(connected place_3 place_1)
 	(connected place_3 place_6)
 	(connected place_3 place_2)
 	(connected place_4 place_7)
 	(connected place_4 place_5)
 	(connected place_5 place_2)
 	(connected place_5 place_8)
 	(connected place_5 place_4)
 	(connected place_5 place_6)
 	(connected place_6 place_3)
 	(connected place_6 place_5)
 	(connected place_7 place_4)
 	(connected place_7 place_9)
 	(connected place_7 place_8)
 	(connected place_8 place_5)
 	(connected place_8 place_10)
 	(connected place_8 place_7)
 	(connected place_9 place_7)
 	(connected place_9 place_10)
 	(connected place_10 place_8)
 	(connected place_10 place_9)
 
)
(:goal
(and 
	(visited place_0)
	(visited place_1)
	(visited place_2)
	(visited place_3)
	(visited place_4)
	(visited place_5)
	(visited place_6)
	(visited place_7)
	(visited place_8)
	(visited place_9)
	(visited place_10)
)
)
)
