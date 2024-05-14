(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	place_0
	place_1
	place_2
	place_3
	place_4
	place_5
- place 
        
)
(:init
	(at-robot place_3)
	(visited place_3)
	(connected place_0 place_3)
 	(connected place_0 place_1)
 	(connected place_1 place_4)
 	(connected place_1 place_0)
 	(connected place_1 place_2)
 	(connected place_2 place_5)
 	(connected place_2 place_1)
 	(connected place_3 place_0)
 	(connected place_3 place_4)
 	(connected place_4 place_1)
 	(connected place_4 place_3)
 	(connected place_4 place_5)
 	(connected place_5 place_2)
 	(connected place_5 place_4)
 
)
(:goal
(and 
	(visited place_3)
	(visited place_4)
)
)
)
