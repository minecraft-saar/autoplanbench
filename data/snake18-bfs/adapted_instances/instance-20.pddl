(define (problem snake-empty-6x7-1-5-9-11440)
(:domain snake)
(:objects
    object_34 object_16 object_10 object_14 object_18 object_31 object_1 object_39 object_36 object_29 object_35 object_20 object_22 object_27 object_12 object_15 object_4 object_23 object_0 object_19 object_9 object_25 object_3 object_6 object_38 object_8 object_7 object_40 object_17 object_24 object_2 object_11 object_41 object_33 object_30 object_32 object_26 object_28 object_37 object_21 object_13 object_5
)
(:init
    (isadjacent object_34 object_39)
    (isadjacent object_34 object_16)
    (isadjacent object_16 object_36)
    (isadjacent object_16 object_10)
    (isadjacent object_16 object_34)
    (isadjacent object_10 object_29)
    (isadjacent object_10 object_14)
    (isadjacent object_10 object_16)
    (isadjacent object_14 object_35)
    (isadjacent object_14 object_18)
    (isadjacent object_14 object_10)
    (isadjacent object_18 object_20)
    (isadjacent object_18 object_31)
    (isadjacent object_18 object_14)
    (isadjacent object_31 object_22)
    (isadjacent object_31 object_1)
    (isadjacent object_31 object_18)
    (isadjacent object_1 object_27)
    (isadjacent object_1 object_31)
    (isadjacent object_39 object_12)
    (isadjacent object_39 object_36)
    (isadjacent object_39 object_34)
    (isadjacent object_36 object_15)
    (isadjacent object_36 object_29)
    (isadjacent object_36 object_16)
    (isadjacent object_36 object_39)
    (isadjacent object_29 object_4)
    (isadjacent object_29 object_35)
    (isadjacent object_29 object_10)
    (isadjacent object_29 object_36)
    (isadjacent object_35 object_23)
    (isadjacent object_35 object_20)
    (isadjacent object_35 object_14)
    (isadjacent object_35 object_29)
    (isadjacent object_20 object_0)
    (isadjacent object_20 object_22)
    (isadjacent object_20 object_18)
    (isadjacent object_20 object_35)
    (isadjacent object_22 object_19)
    (isadjacent object_22 object_27)
    (isadjacent object_22 object_31)
    (isadjacent object_22 object_20)
    (isadjacent object_27 object_9)
    (isadjacent object_27 object_1)
    (isadjacent object_27 object_22)
    (isadjacent object_12 object_25)
    (isadjacent object_12 object_15)
    (isadjacent object_12 object_39)
    (isadjacent object_15 object_3)
    (isadjacent object_15 object_4)
    (isadjacent object_15 object_36)
    (isadjacent object_15 object_12)
    (isadjacent object_4 object_6)
    (isadjacent object_4 object_23)
    (isadjacent object_4 object_29)
    (isadjacent object_4 object_15)
    (isadjacent object_23 object_38)
    (isadjacent object_23 object_0)
    (isadjacent object_23 object_35)
    (isadjacent object_23 object_4)
    (isadjacent object_0 object_8)
    (isadjacent object_0 object_19)
    (isadjacent object_0 object_20)
    (isadjacent object_0 object_23)
    (isadjacent object_19 object_7)
    (isadjacent object_19 object_9)
    (isadjacent object_19 object_22)
    (isadjacent object_19 object_0)
    (isadjacent object_9 object_40)
    (isadjacent object_9 object_27)
    (isadjacent object_9 object_19)
    (isadjacent object_25 object_17)
    (isadjacent object_25 object_3)
    (isadjacent object_25 object_12)
    (isadjacent object_3 object_24)
    (isadjacent object_3 object_6)
    (isadjacent object_3 object_15)
    (isadjacent object_3 object_25)
    (isadjacent object_6 object_2)
    (isadjacent object_6 object_38)
    (isadjacent object_6 object_4)
    (isadjacent object_6 object_3)
    (isadjacent object_38 object_11)
    (isadjacent object_38 object_8)
    (isadjacent object_38 object_23)
    (isadjacent object_38 object_6)
    (isadjacent object_8 object_41)
    (isadjacent object_8 object_7)
    (isadjacent object_8 object_0)
    (isadjacent object_8 object_38)
    (isadjacent object_7 object_33)
    (isadjacent object_7 object_40)
    (isadjacent object_7 object_19)
    (isadjacent object_7 object_8)
    (isadjacent object_40 object_30)
    (isadjacent object_40 object_9)
    (isadjacent object_40 object_7)
    (isadjacent object_17 object_32)
    (isadjacent object_17 object_24)
    (isadjacent object_17 object_25)
    (isadjacent object_24 object_26)
    (isadjacent object_24 object_2)
    (isadjacent object_24 object_3)
    (isadjacent object_24 object_17)
    (isadjacent object_2 object_28)
    (isadjacent object_2 object_11)
    (isadjacent object_2 object_6)
    (isadjacent object_2 object_24)
    (isadjacent object_11 object_37)
    (isadjacent object_11 object_41)
    (isadjacent object_11 object_38)
    (isadjacent object_11 object_2)
    (isadjacent object_41 object_21)
    (isadjacent object_41 object_33)
    (isadjacent object_41 object_8)
    (isadjacent object_41 object_11)
    (isadjacent object_33 object_13)
    (isadjacent object_33 object_30)
    (isadjacent object_33 object_7)
    (isadjacent object_33 object_41)
    (isadjacent object_30 object_5)
    (isadjacent object_30 object_40)
    (isadjacent object_30 object_33)
    (isadjacent object_32 object_26)
    (isadjacent object_32 object_17)
    (isadjacent object_26 object_28)
    (isadjacent object_26 object_24)
    (isadjacent object_26 object_32)
    (isadjacent object_28 object_37)
    (isadjacent object_28 object_2)
    (isadjacent object_28 object_26)
    (isadjacent object_37 object_21)
    (isadjacent object_37 object_11)
    (isadjacent object_37 object_28)
    (isadjacent object_21 object_13)
    (isadjacent object_21 object_41)
    (isadjacent object_21 object_37)
    (isadjacent object_13 object_5)
    (isadjacent object_13 object_33)
    (isadjacent object_13 object_21)
    (isadjacent object_5 object_30)
    (isadjacent object_5 object_13)
    (tailsnake object_27)
    (headsnake object_22)
    (nextsnake object_22 object_27)
    (blocked object_22)
    (blocked object_27)
    (spawn object_32)
    (nextspawn object_33 dummypoint)
    (nextspawn object_32 object_7)
    (nextspawn object_7 object_13)
    (nextspawn object_13 object_36)
    (nextspawn object_36 object_30)
    (nextspawn object_30 object_3)
    (nextspawn object_3 object_31)
    (nextspawn object_31 object_12)
    (nextspawn object_12 object_33)
    (ispoint object_9)
    (ispoint object_6)
    (ispoint object_37)
    (ispoint object_35)
    (ispoint object_19)
)
(:goal
(and
    (not (ispoint object_9))
    (not (ispoint object_6))
    (not (ispoint object_37))
    (not (ispoint object_35))
    (not (ispoint object_19))
    (not (ispoint object_32))
    (not (ispoint object_7))
    (not (ispoint object_13))
    (not (ispoint object_36))
    (not (ispoint object_30))
    (not (ispoint object_3))
    (not (ispoint object_31))
    (not (ispoint object_12))
    (not (ispoint object_33))
)
)
)