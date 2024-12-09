(define (problem grid-3)
(:domain grid-visit-all)
(:objects 
	place_7
	place_0
	place_3
	place_2
	place_5
	place_8
	place_4
	place_6
	place_1
- place 
        
)
(:init
	(at-robot place_5)
	(visited place_5)
	(connected place_7 place_2)
 	(connected place_7 place_0)
 	(connected place_0 place_5)
 	(connected place_0 place_7)
 	(connected place_0 place_3)
 	(connected place_3 place_8)
 	(connected place_3 place_0)
 	(connected place_2 place_7)
 	(connected place_2 place_4)
 	(connected place_2 place_5)
 	(connected place_5 place_0)
 	(connected place_5 place_6)
 	(connected place_5 place_2)
 	(connected place_5 place_8)
 	(connected place_8 place_3)
 	(connected place_8 place_1)
 	(connected place_8 place_5)
 	(connected place_4 place_2)
 	(connected place_4 place_6)
 	(connected place_6 place_5)
 	(connected place_6 place_4)
 	(connected place_6 place_1)
 	(connected place_1 place_8)
 	(connected place_1 place_6)
 
)
(:goal
(and 
	(visited place_7)
	(visited place_0)
	(visited place_3)
	(visited place_2)
	(visited place_5)
	(visited place_8)
	(visited place_4)
	(visited place_6)
	(visited place_1)
)
)
)