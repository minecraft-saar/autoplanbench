(define (problem grid-6)
(:domain grid-visit-all)
(:objects 
	place_29
	place_4
	place_17
	place_30
	place_12
	place_14
	place_34
	place_15
	place_9
	place_20
	place_31
	place_24
	place_33
	place_18
	place_22
	place_0
	place_3
	place_19
	place_28
	place_25
	place_8
	place_21
	place_35
	place_13
	place_10
	place_23
	place_1
	place_5
	place_32
	place_26
	place_2
	place_11
	place_27
	place_7
	place_6
	place_16
- place 
        
)
(:init
	(at-robot place_21)
	(visited place_21)
	(connected place_29 place_34)
 	(connected place_29 place_4)
 	(connected place_4 place_15)
 	(connected place_4 place_29)
 	(connected place_4 place_17)
 	(connected place_17 place_9)
 	(connected place_17 place_4)
 	(connected place_17 place_30)
 	(connected place_30 place_20)
 	(connected place_30 place_17)
 	(connected place_30 place_12)
 	(connected place_12 place_31)
 	(connected place_12 place_30)
 	(connected place_12 place_14)
 	(connected place_14 place_24)
 	(connected place_14 place_12)
 	(connected place_34 place_29)
 	(connected place_34 place_33)
 	(connected place_34 place_15)
 	(connected place_15 place_4)
 	(connected place_15 place_18)
 	(connected place_15 place_34)
 	(connected place_15 place_9)
 	(connected place_9 place_17)
 	(connected place_9 place_22)
 	(connected place_9 place_15)
 	(connected place_9 place_20)
 	(connected place_20 place_30)
 	(connected place_20 place_0)
 	(connected place_20 place_9)
 	(connected place_20 place_31)
 	(connected place_31 place_12)
 	(connected place_31 place_3)
 	(connected place_31 place_20)
 	(connected place_31 place_24)
 	(connected place_24 place_14)
 	(connected place_24 place_19)
 	(connected place_24 place_31)
 	(connected place_33 place_34)
 	(connected place_33 place_28)
 	(connected place_33 place_18)
 	(connected place_18 place_15)
 	(connected place_18 place_25)
 	(connected place_18 place_33)
 	(connected place_18 place_22)
 	(connected place_22 place_9)
 	(connected place_22 place_8)
 	(connected place_22 place_18)
 	(connected place_22 place_0)
 	(connected place_0 place_20)
 	(connected place_0 place_21)
 	(connected place_0 place_22)
 	(connected place_0 place_3)
 	(connected place_3 place_31)
 	(connected place_3 place_35)
 	(connected place_3 place_0)
 	(connected place_3 place_19)
 	(connected place_19 place_24)
 	(connected place_19 place_13)
 	(connected place_19 place_3)
 	(connected place_28 place_33)
 	(connected place_28 place_10)
 	(connected place_28 place_25)
 	(connected place_25 place_18)
 	(connected place_25 place_23)
 	(connected place_25 place_28)
 	(connected place_25 place_8)
 	(connected place_8 place_22)
 	(connected place_8 place_1)
 	(connected place_8 place_25)
 	(connected place_8 place_21)
 	(connected place_21 place_0)
 	(connected place_21 place_5)
 	(connected place_21 place_8)
 	(connected place_21 place_35)
 	(connected place_35 place_3)
 	(connected place_35 place_32)
 	(connected place_35 place_21)
 	(connected place_35 place_13)
 	(connected place_13 place_19)
 	(connected place_13 place_26)
 	(connected place_13 place_35)
 	(connected place_10 place_28)
 	(connected place_10 place_2)
 	(connected place_10 place_23)
 	(connected place_23 place_25)
 	(connected place_23 place_11)
 	(connected place_23 place_10)
 	(connected place_23 place_1)
 	(connected place_1 place_8)
 	(connected place_1 place_27)
 	(connected place_1 place_23)
 	(connected place_1 place_5)
 	(connected place_5 place_21)
 	(connected place_5 place_7)
 	(connected place_5 place_1)
 	(connected place_5 place_32)
 	(connected place_32 place_35)
 	(connected place_32 place_6)
 	(connected place_32 place_5)
 	(connected place_32 place_26)
 	(connected place_26 place_13)
 	(connected place_26 place_16)
 	(connected place_26 place_32)
 	(connected place_2 place_10)
 	(connected place_2 place_11)
 	(connected place_11 place_23)
 	(connected place_11 place_2)
 	(connected place_11 place_27)
 	(connected place_27 place_1)
 	(connected place_27 place_11)
 	(connected place_27 place_7)
 	(connected place_7 place_5)
 	(connected place_7 place_27)
 	(connected place_7 place_6)
 	(connected place_6 place_32)
 	(connected place_6 place_7)
 	(connected place_6 place_16)
 	(connected place_16 place_26)
 	(connected place_16 place_6)
 
)
(:goal
(and 
	(visited place_29)
	(visited place_17)
	(visited place_12)
	(visited place_14)
	(visited place_15)
	(visited place_24)
	(visited place_33)
	(visited place_18)
	(visited place_22)
	(visited place_19)
	(visited place_25)
	(visited place_21)
	(visited place_35)
	(visited place_23)
	(visited place_1)
	(visited place_5)
	(visited place_26)
	(visited place_6)
)
)
)