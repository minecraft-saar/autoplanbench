(define (problem grid-5)
(:domain grid-visit-all)
(:objects 
	place_1
	place_8
	place_6
	place_7
	place_9
	place_4
	place_10
	place_0
	place_5
	place_2
	place_3
- place 
        
)
(:init
	(at-robot place_4)
	(visited place_4)
	(connected place_1 place_7)
 	(connected place_8 place_9)
 	(connected place_8 place_6)
 	(connected place_6 place_4)
 	(connected place_6 place_8)
 	(connected place_6 place_7)
 	(connected place_7 place_1)
 	(connected place_7 place_10)
 	(connected place_7 place_6)
 	(connected place_9 place_8)
 	(connected place_9 place_0)
 	(connected place_9 place_4)
 	(connected place_4 place_6)
 	(connected place_4 place_5)
 	(connected place_4 place_9)
 	(connected place_4 place_10)
 	(connected place_10 place_7)
 	(connected place_10 place_4)
 	(connected place_0 place_9)
 	(connected place_0 place_5)
 	(connected place_5 place_4)
 	(connected place_5 place_2)
 	(connected place_5 place_0)
 	(connected place_2 place_5)
 	(connected place_2 place_3)
 	(connected place_3 place_2)
 
)
(:goal
(and 
	(visited place_1)
	(visited place_8)
	(visited place_6)
	(visited place_7)
	(visited place_9)
	(visited place_4)
	(visited place_10)
	(visited place_0)
	(visited place_5)
	(visited place_2)
	(visited place_3)
)
)
)
