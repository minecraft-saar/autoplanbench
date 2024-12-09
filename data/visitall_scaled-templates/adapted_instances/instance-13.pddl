(define (problem grid-24)
(:domain grid-visit-all)
(:objects 
	place_15
	place_20
	place_13
	place_16
	place_14
	place_21
	place_6
	place_12
	place_0
	place_19
	place_2
	place_17
	place_3
	place_11
	place_22
	place_7
	place_10
	place_23
	place_5
	place_8
	place_9
	place_4
	place_1
	place_18
- place 
        
)
(:init
	(at-robot place_5)
	(visited place_5)
	(connected place_15 place_20)
 	(connected place_20 place_15)
 	(connected place_20 place_13)
 	(connected place_13 place_20)
 	(connected place_13 place_16)
 	(connected place_16 place_13)
 	(connected place_16 place_14)
 	(connected place_14 place_16)
 	(connected place_14 place_21)
 	(connected place_21 place_14)
 	(connected place_21 place_6)
 	(connected place_6 place_21)
 	(connected place_6 place_12)
 	(connected place_12 place_6)
 	(connected place_12 place_0)
 	(connected place_0 place_12)
 	(connected place_0 place_19)
 	(connected place_19 place_0)
 	(connected place_19 place_2)
 	(connected place_2 place_19)
 	(connected place_2 place_17)
 	(connected place_17 place_2)
 	(connected place_17 place_3)
 	(connected place_3 place_17)
 	(connected place_3 place_11)
 	(connected place_11 place_3)
 	(connected place_11 place_22)
 	(connected place_22 place_11)
 	(connected place_22 place_7)
 	(connected place_7 place_22)
 	(connected place_7 place_10)
 	(connected place_10 place_7)
 	(connected place_10 place_23)
 	(connected place_23 place_10)
 	(connected place_23 place_5)
 	(connected place_5 place_23)
 	(connected place_5 place_8)
 	(connected place_8 place_5)
 	(connected place_8 place_9)
 	(connected place_9 place_8)
 	(connected place_9 place_4)
 	(connected place_4 place_9)
 	(connected place_4 place_1)
 	(connected place_1 place_4)
 	(connected place_1 place_18)
 	(connected place_18 place_1)
 
)
(:goal
(and 
	(visited place_15)
	(visited place_20)
	(visited place_13)
	(visited place_16)
	(visited place_14)
	(visited place_21)
	(visited place_6)
	(visited place_12)
	(visited place_0)
	(visited place_19)
	(visited place_2)
	(visited place_17)
	(visited place_3)
	(visited place_11)
	(visited place_22)
	(visited place_7)
	(visited place_10)
	(visited place_23)
	(visited place_5)
	(visited place_8)
	(visited place_9)
	(visited place_4)
	(visited place_1)
	(visited place_18)
)
)
)
