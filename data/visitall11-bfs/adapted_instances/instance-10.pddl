(define (problem grid-6)
(:domain grid-visit-all)
(:objects 
	place_10
	place_31
	place_29
	place_0
	place_35
	place_32
	place_30
	place_33
	place_14
	place_27
	place_9
	place_5
	place_18
	place_28
	place_21
	place_2
	place_4
	place_25
	place_16
	place_11
	place_23
	place_12
	place_20
	place_17
	place_15
	place_19
	place_8
	place_1
	place_26
	place_34
	place_24
	place_13
	place_7
	place_22
	place_3
	place_6
- place 
        
)
(:init
	(at-robot place_12)
	(visited place_12)
	(connected place_10 place_30)
 	(connected place_10 place_31)
 	(connected place_31 place_33)
 	(connected place_31 place_10)
 	(connected place_31 place_29)
 	(connected place_29 place_14)
 	(connected place_29 place_31)
 	(connected place_29 place_0)
 	(connected place_0 place_27)
 	(connected place_0 place_29)
 	(connected place_0 place_35)
 	(connected place_35 place_9)
 	(connected place_35 place_0)
 	(connected place_35 place_32)
 	(connected place_32 place_5)
 	(connected place_32 place_35)
 	(connected place_30 place_10)
 	(connected place_30 place_18)
 	(connected place_30 place_33)
 	(connected place_33 place_31)
 	(connected place_33 place_28)
 	(connected place_33 place_30)
 	(connected place_33 place_14)
 	(connected place_14 place_29)
 	(connected place_14 place_21)
 	(connected place_14 place_33)
 	(connected place_14 place_27)
 	(connected place_27 place_0)
 	(connected place_27 place_2)
 	(connected place_27 place_14)
 	(connected place_27 place_9)
 	(connected place_9 place_35)
 	(connected place_9 place_4)
 	(connected place_9 place_27)
 	(connected place_9 place_5)
 	(connected place_5 place_32)
 	(connected place_5 place_25)
 	(connected place_5 place_9)
 	(connected place_18 place_30)
 	(connected place_18 place_16)
 	(connected place_18 place_28)
 	(connected place_28 place_33)
 	(connected place_28 place_11)
 	(connected place_28 place_18)
 	(connected place_28 place_21)
 	(connected place_21 place_14)
 	(connected place_21 place_23)
 	(connected place_21 place_28)
 	(connected place_21 place_2)
 	(connected place_2 place_27)
 	(connected place_2 place_12)
 	(connected place_2 place_21)
 	(connected place_2 place_4)
 	(connected place_4 place_9)
 	(connected place_4 place_20)
 	(connected place_4 place_2)
 	(connected place_4 place_25)
 	(connected place_25 place_5)
 	(connected place_25 place_17)
 	(connected place_25 place_4)
 	(connected place_16 place_18)
 	(connected place_16 place_15)
 	(connected place_16 place_11)
 	(connected place_11 place_28)
 	(connected place_11 place_19)
 	(connected place_11 place_16)
 	(connected place_11 place_23)
 	(connected place_23 place_21)
 	(connected place_23 place_8)
 	(connected place_23 place_11)
 	(connected place_23 place_12)
 	(connected place_12 place_2)
 	(connected place_12 place_1)
 	(connected place_12 place_23)
 	(connected place_12 place_20)
 	(connected place_20 place_4)
 	(connected place_20 place_26)
 	(connected place_20 place_12)
 	(connected place_20 place_17)
 	(connected place_17 place_25)
 	(connected place_17 place_34)
 	(connected place_17 place_20)
 	(connected place_15 place_16)
 	(connected place_15 place_24)
 	(connected place_15 place_19)
 	(connected place_19 place_11)
 	(connected place_19 place_13)
 	(connected place_19 place_15)
 	(connected place_19 place_8)
 	(connected place_8 place_23)
 	(connected place_8 place_7)
 	(connected place_8 place_19)
 	(connected place_8 place_1)
 	(connected place_1 place_12)
 	(connected place_1 place_22)
 	(connected place_1 place_8)
 	(connected place_1 place_26)
 	(connected place_26 place_20)
 	(connected place_26 place_3)
 	(connected place_26 place_1)
 	(connected place_26 place_34)
 	(connected place_34 place_17)
 	(connected place_34 place_6)
 	(connected place_34 place_26)
 	(connected place_24 place_15)
 	(connected place_24 place_13)
 	(connected place_13 place_19)
 	(connected place_13 place_24)
 	(connected place_13 place_7)
 	(connected place_7 place_8)
 	(connected place_7 place_13)
 	(connected place_7 place_22)
 	(connected place_22 place_1)
 	(connected place_22 place_7)
 	(connected place_22 place_3)
 	(connected place_3 place_26)
 	(connected place_3 place_22)
 	(connected place_3 place_6)
 	(connected place_6 place_34)
 	(connected place_6 place_3)
 
)
(:goal
(and 
	(visited place_29)
	(visited place_0)
	(visited place_35)
	(visited place_32)
	(visited place_30)
	(visited place_33)
	(visited place_27)
	(visited place_9)
	(visited place_18)
	(visited place_28)
	(visited place_16)
	(visited place_12)
	(visited place_20)
	(visited place_24)
	(visited place_3)
	(visited place_6)
)
)
)