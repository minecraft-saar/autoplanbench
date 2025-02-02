(define (problem grid-10)
(:domain grid-visit-all)
(:objects 
	place_33
	place_2
	place_32
	place_6
	place_16
	place_39
	place_24
	place_34
	place_27
	place_31
	place_8
	place_14
	place_3
	place_37
	place_28
	place_29
	place_20
	place_4
	place_21
	place_10
	place_19
	place_35
	place_11
	place_36
	place_30
	place_22
	place_38
	place_25
	place_17
	place_26
	place_9
	place_1
	place_18
	place_12
	place_13
	place_23
	place_5
	place_0
	place_7
	place_15
- place 
        
)
(:init
	(at-robot place_27)
	(visited place_27)
	(connected place_33 place_16)
 	(connected place_33 place_2)
 	(connected place_2 place_39)
 	(connected place_2 place_33)
 	(connected place_2 place_32)
 	(connected place_32 place_24)
 	(connected place_32 place_2)
 	(connected place_32 place_6)
 	(connected place_6 place_34)
 	(connected place_6 place_32)
 	(connected place_16 place_33)
 	(connected place_16 place_27)
 	(connected place_16 place_39)
 	(connected place_39 place_2)
 	(connected place_39 place_31)
 	(connected place_39 place_16)
 	(connected place_39 place_24)
 	(connected place_24 place_32)
 	(connected place_24 place_8)
 	(connected place_24 place_39)
 	(connected place_24 place_34)
 	(connected place_34 place_6)
 	(connected place_34 place_14)
 	(connected place_34 place_24)
 	(connected place_27 place_16)
 	(connected place_27 place_3)
 	(connected place_27 place_31)
 	(connected place_31 place_39)
 	(connected place_31 place_37)
 	(connected place_31 place_27)
 	(connected place_31 place_8)
 	(connected place_8 place_24)
 	(connected place_8 place_28)
 	(connected place_8 place_31)
 	(connected place_8 place_14)
 	(connected place_14 place_34)
 	(connected place_14 place_29)
 	(connected place_14 place_8)
 	(connected place_3 place_27)
 	(connected place_3 place_20)
 	(connected place_3 place_37)
 	(connected place_37 place_31)
 	(connected place_37 place_4)
 	(connected place_37 place_3)
 	(connected place_37 place_28)
 	(connected place_28 place_8)
 	(connected place_28 place_21)
 	(connected place_28 place_37)
 	(connected place_28 place_29)
 	(connected place_29 place_14)
 	(connected place_29 place_10)
 	(connected place_29 place_28)
 	(connected place_20 place_3)
 	(connected place_20 place_19)
 	(connected place_20 place_4)
 	(connected place_4 place_37)
 	(connected place_4 place_35)
 	(connected place_4 place_20)
 	(connected place_4 place_21)
 	(connected place_21 place_28)
 	(connected place_21 place_11)
 	(connected place_21 place_4)
 	(connected place_21 place_10)
 	(connected place_10 place_29)
 	(connected place_10 place_36)
 	(connected place_10 place_21)
 	(connected place_19 place_20)
 	(connected place_19 place_30)
 	(connected place_19 place_35)
 	(connected place_35 place_4)
 	(connected place_35 place_22)
 	(connected place_35 place_19)
 	(connected place_35 place_11)
 	(connected place_11 place_21)
 	(connected place_11 place_38)
 	(connected place_11 place_35)
 	(connected place_11 place_36)
 	(connected place_36 place_10)
 	(connected place_36 place_25)
 	(connected place_36 place_11)
 	(connected place_30 place_19)
 	(connected place_30 place_17)
 	(connected place_30 place_22)
 	(connected place_22 place_35)
 	(connected place_22 place_26)
 	(connected place_22 place_30)
 	(connected place_22 place_38)
 	(connected place_38 place_11)
 	(connected place_38 place_9)
 	(connected place_38 place_22)
 	(connected place_38 place_25)
 	(connected place_25 place_36)
 	(connected place_25 place_1)
 	(connected place_25 place_38)
 	(connected place_17 place_30)
 	(connected place_17 place_18)
 	(connected place_17 place_26)
 	(connected place_26 place_22)
 	(connected place_26 place_12)
 	(connected place_26 place_17)
 	(connected place_26 place_9)
 	(connected place_9 place_38)
 	(connected place_9 place_13)
 	(connected place_9 place_26)
 	(connected place_9 place_1)
 	(connected place_1 place_25)
 	(connected place_1 place_23)
 	(connected place_1 place_9)
 	(connected place_18 place_17)
 	(connected place_18 place_5)
 	(connected place_18 place_12)
 	(connected place_12 place_26)
 	(connected place_12 place_0)
 	(connected place_12 place_18)
 	(connected place_12 place_13)
 	(connected place_13 place_9)
 	(connected place_13 place_7)
 	(connected place_13 place_12)
 	(connected place_13 place_23)
 	(connected place_23 place_1)
 	(connected place_23 place_15)
 	(connected place_23 place_13)
 	(connected place_5 place_18)
 	(connected place_5 place_0)
 	(connected place_0 place_12)
 	(connected place_0 place_5)
 	(connected place_0 place_7)
 	(connected place_7 place_13)
 	(connected place_7 place_0)
 	(connected place_7 place_15)
 	(connected place_15 place_23)
 	(connected place_15 place_7)
 
)
(:goal
(and 
	(visited place_33)
	(visited place_2)
	(visited place_32)
	(visited place_6)
	(visited place_16)
	(visited place_39)
	(visited place_24)
	(visited place_34)
	(visited place_27)
	(visited place_31)
	(visited place_8)
	(visited place_14)
	(visited place_3)
	(visited place_37)
	(visited place_28)
	(visited place_29)
	(visited place_20)
	(visited place_4)
	(visited place_21)
	(visited place_10)
	(visited place_19)
	(visited place_35)
	(visited place_11)
	(visited place_36)
	(visited place_30)
	(visited place_22)
	(visited place_38)
	(visited place_25)
	(visited place_17)
	(visited place_26)
	(visited place_9)
	(visited place_1)
	(visited place_18)
	(visited place_12)
	(visited place_13)
	(visited place_23)
	(visited place_5)
	(visited place_0)
	(visited place_7)
	(visited place_15)
)
)
)
