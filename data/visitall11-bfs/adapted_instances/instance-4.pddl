(define (problem grid-3)
(:domain grid-visit-all)
(:objects 
	place_1
	place_2
	place_4
	place_0
	place_8
	place_5
	place_3
	place_7
	place_6
- place 
        
)
(:init
	(at-robot place_8)
	(visited place_8)
	(connected place_1 place_0)
 	(connected place_1 place_2)
 	(connected place_2 place_8)
 	(connected place_2 place_1)
 	(connected place_2 place_4)
 	(connected place_4 place_5)
 	(connected place_4 place_2)
 	(connected place_0 place_1)
 	(connected place_0 place_3)
 	(connected place_0 place_8)
 	(connected place_8 place_2)
 	(connected place_8 place_7)
 	(connected place_8 place_0)
 	(connected place_8 place_5)
 	(connected place_5 place_4)
 	(connected place_5 place_6)
 	(connected place_5 place_8)
 	(connected place_3 place_0)
 	(connected place_3 place_7)
 	(connected place_7 place_8)
 	(connected place_7 place_3)
 	(connected place_7 place_6)
 	(connected place_6 place_5)
 	(connected place_6 place_7)
 
)
(:goal
(and 
	(visited place_1)
	(visited place_4)
	(visited place_8)
	(visited place_3)
	(visited place_7)
)
)
)