(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	place_3
	place_2
	place_1
	place_6
	place_0
	place_4
	place_5
- place 
        
)
(:init
	(at-robot place_6)
	(visited place_6)
	(connected place_3 place_2)
 	(connected place_2 place_0)
 	(connected place_2 place_3)
 	(connected place_2 place_1)
 	(connected place_1 place_4)
 	(connected place_1 place_2)
 	(connected place_1 place_6)
 	(connected place_6 place_5)
 	(connected place_6 place_1)
 	(connected place_0 place_2)
 	(connected place_0 place_4)
 	(connected place_4 place_1)
 	(connected place_4 place_0)
 	(connected place_4 place_5)
 	(connected place_5 place_6)
 	(connected place_5 place_4)
 
)
(:goal
(and 
	(visited place_3)
	(visited place_1)
	(visited place_6)
	(visited place_5)
)
)
)
