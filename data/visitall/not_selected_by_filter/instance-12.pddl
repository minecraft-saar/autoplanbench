(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	place_2
	place_3
	place_4
	place_5
	place_1
	place_0
- place 
        
)
(:init
	(at-robot place_4)
	(visited place_4)
	(connected place_2 place_5)
 	(connected place_2 place_3)
 	(connected place_3 place_1)
 	(connected place_3 place_2)
 	(connected place_3 place_4)
 	(connected place_4 place_0)
 	(connected place_4 place_3)
 	(connected place_5 place_2)
 	(connected place_5 place_1)
 	(connected place_1 place_3)
 	(connected place_1 place_5)
 	(connected place_1 place_0)
 	(connected place_0 place_4)
 	(connected place_0 place_1)
 
)
(:goal
(and 
	(visited place_2)
	(visited place_3)
	(visited place_4)
	(visited place_0)
)
)
)