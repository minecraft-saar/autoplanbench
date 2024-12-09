(define (problem grid-13)
(:domain grid-visit-all)
(:objects 
	place_7
	place_12
	place_6
	place_8
	place_16
	place_9
	place_24
	place_21
	place_18
	place_3
	place_11
	place_14
	place_0
	place_1
	place_5
	place_10
	place_19
	place_13
	place_15
	place_22
	place_17
	place_25
	place_4
	place_2
	place_23
	place_20
- place 
        
)
(:init
	(at-robot place_4)
	(visited place_4)
	(connected place_7 place_6)
 	(connected place_7 place_12)
 	(connected place_12 place_8)
 	(connected place_12 place_7)
 	(connected place_6 place_7)
 	(connected place_6 place_16)
 	(connected place_6 place_8)
 	(connected place_8 place_12)
 	(connected place_8 place_9)
 	(connected place_8 place_6)
 	(connected place_16 place_6)
 	(connected place_16 place_24)
 	(connected place_16 place_9)
 	(connected place_9 place_8)
 	(connected place_9 place_21)
 	(connected place_9 place_16)
 	(connected place_24 place_16)
 	(connected place_24 place_18)
 	(connected place_24 place_21)
 	(connected place_21 place_9)
 	(connected place_21 place_3)
 	(connected place_21 place_24)
 	(connected place_18 place_24)
 	(connected place_18 place_11)
 	(connected place_18 place_3)
 	(connected place_3 place_21)
 	(connected place_3 place_14)
 	(connected place_3 place_18)
 	(connected place_11 place_18)
 	(connected place_11 place_0)
 	(connected place_11 place_14)
 	(connected place_14 place_3)
 	(connected place_14 place_1)
 	(connected place_14 place_11)
 	(connected place_0 place_11)
 	(connected place_0 place_5)
 	(connected place_0 place_1)
 	(connected place_1 place_14)
 	(connected place_1 place_10)
 	(connected place_1 place_0)
 	(connected place_5 place_0)
 	(connected place_5 place_19)
 	(connected place_5 place_10)
 	(connected place_10 place_1)
 	(connected place_10 place_13)
 	(connected place_10 place_5)
 	(connected place_19 place_5)
 	(connected place_19 place_15)
 	(connected place_19 place_13)
 	(connected place_13 place_10)
 	(connected place_13 place_22)
 	(connected place_13 place_19)
 	(connected place_15 place_19)
 	(connected place_15 place_17)
 	(connected place_15 place_22)
 	(connected place_22 place_13)
 	(connected place_22 place_25)
 	(connected place_22 place_15)
 	(connected place_17 place_15)
 	(connected place_17 place_4)
 	(connected place_17 place_25)
 	(connected place_25 place_22)
 	(connected place_25 place_2)
 	(connected place_25 place_17)
 	(connected place_4 place_17)
 	(connected place_4 place_23)
 	(connected place_4 place_2)
 	(connected place_2 place_25)
 	(connected place_2 place_20)
 	(connected place_2 place_4)
 	(connected place_23 place_4)
 	(connected place_23 place_20)
 	(connected place_20 place_2)
 	(connected place_20 place_23)
 
)
(:goal
(and 
	(visited place_7)
	(visited place_12)
	(visited place_6)
	(visited place_8)
	(visited place_16)
	(visited place_9)
	(visited place_24)
	(visited place_21)
	(visited place_18)
	(visited place_3)
	(visited place_11)
	(visited place_14)
	(visited place_0)
	(visited place_1)
	(visited place_5)
	(visited place_10)
	(visited place_19)
	(visited place_13)
	(visited place_15)
	(visited place_22)
	(visited place_17)
	(visited place_25)
	(visited place_4)
	(visited place_2)
	(visited place_23)
	(visited place_20)
)
)
)
