(define (problem grid-4)
(:domain grid-visit-all)
(:objects 
	place_14
	place_8
	place_7
	place_9
	place_11
	place_10
	place_2
	place_6
	place_0
	place_3
	place_1
	place_15
	place_12
	place_13
	place_5
	place_4
- place 
        
)
(:init
	(at-robot place_1)
	(visited place_1)
	(connected place_14 place_11)
 	(connected place_14 place_8)
 	(connected place_8 place_10)
 	(connected place_8 place_14)
 	(connected place_8 place_7)
 	(connected place_7 place_2)
 	(connected place_7 place_8)
 	(connected place_7 place_9)
 	(connected place_9 place_6)
 	(connected place_9 place_7)
 	(connected place_11 place_14)
 	(connected place_11 place_0)
 	(connected place_11 place_10)
 	(connected place_10 place_8)
 	(connected place_10 place_3)
 	(connected place_10 place_11)
 	(connected place_10 place_2)
 	(connected place_2 place_7)
 	(connected place_2 place_1)
 	(connected place_2 place_10)
 	(connected place_2 place_6)
 	(connected place_6 place_9)
 	(connected place_6 place_15)
 	(connected place_6 place_2)
 	(connected place_0 place_11)
 	(connected place_0 place_12)
 	(connected place_0 place_3)
 	(connected place_3 place_10)
 	(connected place_3 place_13)
 	(connected place_3 place_0)
 	(connected place_3 place_1)
 	(connected place_1 place_2)
 	(connected place_1 place_5)
 	(connected place_1 place_3)
 	(connected place_1 place_15)
 	(connected place_15 place_6)
 	(connected place_15 place_4)
 	(connected place_15 place_1)
 	(connected place_12 place_0)
 	(connected place_12 place_13)
 	(connected place_13 place_3)
 	(connected place_13 place_12)
 	(connected place_13 place_5)
 	(connected place_5 place_1)
 	(connected place_5 place_13)
 	(connected place_5 place_4)
 	(connected place_4 place_15)
 	(connected place_4 place_5)
 
)
(:goal
(and 
	(visited place_14)
	(visited place_8)
	(visited place_9)
	(visited place_11)
	(visited place_1)
	(visited place_12)
	(visited place_5)
	(visited place_4)
)
)
)