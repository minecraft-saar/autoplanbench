(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	place_1
	place_3
	place_5
	place_4
	place_2
	place_0
- place 
        
)
(:init
	(at-robot place_5)
	(visited place_5)
	(connected place_1 place_4)
 	(connected place_1 place_3)
 	(connected place_3 place_2)
 	(connected place_3 place_1)
 	(connected place_3 place_5)
 	(connected place_5 place_0)
 	(connected place_5 place_3)
 	(connected place_4 place_1)
 	(connected place_4 place_2)
 	(connected place_2 place_3)
 	(connected place_2 place_4)
 	(connected place_2 place_0)
 	(connected place_0 place_5)
 	(connected place_0 place_2)
 
)
(:goal
(and 
	(visited place_1)
	(visited place_3)
	(visited place_5)
	(visited place_0)
)
)
)
