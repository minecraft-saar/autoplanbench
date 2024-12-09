(define (problem grid-7)
(:domain grid-visit-all)
(:objects 
	place_30
	place_14
	place_45
	place_12
	place_23
	place_3
	place_42
	place_36
	place_1
	place_39
	place_25
	place_37
	place_18
	place_9
	place_40
	place_17
	place_13
	place_8
	place_26
	place_5
	place_22
	place_35
	place_33
	place_43
	place_4
	place_0
	place_38
	place_29
	place_27
	place_46
	place_7
	place_11
	place_15
	place_19
	place_31
	place_21
	place_34
	place_20
	place_41
	place_44
	place_6
	place_48
	place_28
	place_2
	place_10
	place_16
	place_24
	place_47
	place_32
- place 
        
)
(:init
	(at-robot place_4)
	(visited place_4)
	(connected place_30 place_36)
 	(connected place_30 place_14)
 	(connected place_14 place_1)
 	(connected place_14 place_30)
 	(connected place_14 place_45)
 	(connected place_45 place_39)
 	(connected place_45 place_14)
 	(connected place_45 place_12)
 	(connected place_12 place_25)
 	(connected place_12 place_45)
 	(connected place_12 place_23)
 	(connected place_23 place_37)
 	(connected place_23 place_12)
 	(connected place_23 place_3)
 	(connected place_3 place_18)
 	(connected place_3 place_23)
 	(connected place_3 place_42)
 	(connected place_42 place_9)
 	(connected place_42 place_3)
 	(connected place_36 place_30)
 	(connected place_36 place_40)
 	(connected place_36 place_1)
 	(connected place_1 place_14)
 	(connected place_1 place_17)
 	(connected place_1 place_36)
 	(connected place_1 place_39)
 	(connected place_39 place_45)
 	(connected place_39 place_13)
 	(connected place_39 place_1)
 	(connected place_39 place_25)
 	(connected place_25 place_12)
 	(connected place_25 place_8)
 	(connected place_25 place_39)
 	(connected place_25 place_37)
 	(connected place_37 place_23)
 	(connected place_37 place_26)
 	(connected place_37 place_25)
 	(connected place_37 place_18)
 	(connected place_18 place_3)
 	(connected place_18 place_5)
 	(connected place_18 place_37)
 	(connected place_18 place_9)
 	(connected place_9 place_42)
 	(connected place_9 place_22)
 	(connected place_9 place_18)
 	(connected place_40 place_36)
 	(connected place_40 place_35)
 	(connected place_40 place_17)
 	(connected place_17 place_1)
 	(connected place_17 place_33)
 	(connected place_17 place_40)
 	(connected place_17 place_13)
 	(connected place_13 place_39)
 	(connected place_13 place_43)
 	(connected place_13 place_17)
 	(connected place_13 place_8)
 	(connected place_8 place_25)
 	(connected place_8 place_4)
 	(connected place_8 place_13)
 	(connected place_8 place_26)
 	(connected place_26 place_37)
 	(connected place_26 place_0)
 	(connected place_26 place_8)
 	(connected place_26 place_5)
 	(connected place_5 place_18)
 	(connected place_5 place_38)
 	(connected place_5 place_26)
 	(connected place_5 place_22)
 	(connected place_22 place_9)
 	(connected place_22 place_29)
 	(connected place_22 place_5)
 	(connected place_35 place_40)
 	(connected place_35 place_27)
 	(connected place_35 place_33)
 	(connected place_33 place_17)
 	(connected place_33 place_46)
 	(connected place_33 place_35)
 	(connected place_33 place_43)
 	(connected place_43 place_13)
 	(connected place_43 place_7)
 	(connected place_43 place_33)
 	(connected place_43 place_4)
 	(connected place_4 place_8)
 	(connected place_4 place_11)
 	(connected place_4 place_43)
 	(connected place_4 place_0)
 	(connected place_0 place_26)
 	(connected place_0 place_15)
 	(connected place_0 place_4)
 	(connected place_0 place_38)
 	(connected place_38 place_5)
 	(connected place_38 place_19)
 	(connected place_38 place_0)
 	(connected place_38 place_29)
 	(connected place_29 place_22)
 	(connected place_29 place_31)
 	(connected place_29 place_38)
 	(connected place_27 place_35)
 	(connected place_27 place_21)
 	(connected place_27 place_46)
 	(connected place_46 place_33)
 	(connected place_46 place_34)
 	(connected place_46 place_27)
 	(connected place_46 place_7)
 	(connected place_7 place_43)
 	(connected place_7 place_20)
 	(connected place_7 place_46)
 	(connected place_7 place_11)
 	(connected place_11 place_4)
 	(connected place_11 place_41)
 	(connected place_11 place_7)
 	(connected place_11 place_15)
 	(connected place_15 place_0)
 	(connected place_15 place_44)
 	(connected place_15 place_11)
 	(connected place_15 place_19)
 	(connected place_19 place_38)
 	(connected place_19 place_6)
 	(connected place_19 place_15)
 	(connected place_19 place_31)
 	(connected place_31 place_29)
 	(connected place_31 place_48)
 	(connected place_31 place_19)
 	(connected place_21 place_27)
 	(connected place_21 place_28)
 	(connected place_21 place_34)
 	(connected place_34 place_46)
 	(connected place_34 place_2)
 	(connected place_34 place_21)
 	(connected place_34 place_20)
 	(connected place_20 place_7)
 	(connected place_20 place_10)
 	(connected place_20 place_34)
 	(connected place_20 place_41)
 	(connected place_41 place_11)
 	(connected place_41 place_16)
 	(connected place_41 place_20)
 	(connected place_41 place_44)
 	(connected place_44 place_15)
 	(connected place_44 place_24)
 	(connected place_44 place_41)
 	(connected place_44 place_6)
 	(connected place_6 place_19)
 	(connected place_6 place_47)
 	(connected place_6 place_44)
 	(connected place_6 place_48)
 	(connected place_48 place_31)
 	(connected place_48 place_32)
 	(connected place_48 place_6)
 	(connected place_28 place_21)
 	(connected place_28 place_2)
 	(connected place_2 place_34)
 	(connected place_2 place_28)
 	(connected place_2 place_10)
 	(connected place_10 place_20)
 	(connected place_10 place_2)
 	(connected place_10 place_16)
 	(connected place_16 place_41)
 	(connected place_16 place_10)
 	(connected place_16 place_24)
 	(connected place_24 place_44)
 	(connected place_24 place_16)
 	(connected place_24 place_47)
 	(connected place_47 place_6)
 	(connected place_47 place_24)
 	(connected place_47 place_32)
 	(connected place_32 place_48)
 	(connected place_32 place_47)
 
)
(:goal
(and 
	(visited place_30)
	(visited place_14)
	(visited place_23)
	(visited place_36)
	(visited place_39)
	(visited place_25)
	(visited place_37)
	(visited place_9)
	(visited place_17)
	(visited place_5)
	(visited place_35)
	(visited place_43)
	(visited place_4)
	(visited place_38)
	(visited place_27)
	(visited place_46)
	(visited place_11)
	(visited place_31)
	(visited place_34)
	(visited place_20)
	(visited place_2)
	(visited place_24)
	(visited place_47)
	(visited place_32)
)
)
)