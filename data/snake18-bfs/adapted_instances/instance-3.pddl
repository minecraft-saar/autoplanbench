(define (problem snake-empty-5x5-1-5-17-11199)
(:domain snake)
(:objects
    object_23 object_17 object_7 object_6 object_15 object_13 object_4 object_11 object_16 object_21 object_9 object_10 object_24 object_1 object_0 object_19 object_8 object_3 object_5 object_20 object_18 object_22 object_2 object_14 object_12
)
(:init
    (isadjacent object_23 object_13)
    (isadjacent object_23 object_17)
    (isadjacent object_17 object_4)
    (isadjacent object_17 object_7)
    (isadjacent object_17 object_23)
    (isadjacent object_7 object_11)
    (isadjacent object_7 object_6)
    (isadjacent object_7 object_17)
    (isadjacent object_6 object_16)
    (isadjacent object_6 object_15)
    (isadjacent object_6 object_7)
    (isadjacent object_15 object_21)
    (isadjacent object_15 object_6)
    (isadjacent object_13 object_9)
    (isadjacent object_13 object_4)
    (isadjacent object_13 object_23)
    (isadjacent object_4 object_10)
    (isadjacent object_4 object_11)
    (isadjacent object_4 object_17)
    (isadjacent object_4 object_13)
    (isadjacent object_11 object_24)
    (isadjacent object_11 object_16)
    (isadjacent object_11 object_7)
    (isadjacent object_11 object_4)
    (isadjacent object_16 object_1)
    (isadjacent object_16 object_21)
    (isadjacent object_16 object_6)
    (isadjacent object_16 object_11)
    (isadjacent object_21 object_0)
    (isadjacent object_21 object_15)
    (isadjacent object_21 object_16)
    (isadjacent object_9 object_19)
    (isadjacent object_9 object_10)
    (isadjacent object_9 object_13)
    (isadjacent object_10 object_8)
    (isadjacent object_10 object_24)
    (isadjacent object_10 object_4)
    (isadjacent object_10 object_9)
    (isadjacent object_24 object_3)
    (isadjacent object_24 object_1)
    (isadjacent object_24 object_11)
    (isadjacent object_24 object_10)
    (isadjacent object_1 object_5)
    (isadjacent object_1 object_0)
    (isadjacent object_1 object_16)
    (isadjacent object_1 object_24)
    (isadjacent object_0 object_20)
    (isadjacent object_0 object_21)
    (isadjacent object_0 object_1)
    (isadjacent object_19 object_18)
    (isadjacent object_19 object_8)
    (isadjacent object_19 object_9)
    (isadjacent object_8 object_22)
    (isadjacent object_8 object_3)
    (isadjacent object_8 object_10)
    (isadjacent object_8 object_19)
    (isadjacent object_3 object_2)
    (isadjacent object_3 object_5)
    (isadjacent object_3 object_24)
    (isadjacent object_3 object_8)
    (isadjacent object_5 object_14)
    (isadjacent object_5 object_20)
    (isadjacent object_5 object_1)
    (isadjacent object_5 object_3)
    (isadjacent object_20 object_12)
    (isadjacent object_20 object_0)
    (isadjacent object_20 object_5)
    (isadjacent object_18 object_22)
    (isadjacent object_18 object_19)
    (isadjacent object_22 object_2)
    (isadjacent object_22 object_8)
    (isadjacent object_22 object_18)
    (isadjacent object_2 object_14)
    (isadjacent object_2 object_3)
    (isadjacent object_2 object_22)
    (isadjacent object_14 object_12)
    (isadjacent object_14 object_5)
    (isadjacent object_14 object_2)
    (isadjacent object_12 object_20)
    (isadjacent object_12 object_14)
    (tailsnake object_6)
    (headsnake object_15)
    (nextsnake object_15 object_6)
    (blocked object_6)
    (blocked object_15)
    (spawn object_19)
    (nextspawn object_14 dummypoint)
    (nextspawn object_19 object_17)
    (nextspawn object_17 object_11)
    (nextspawn object_11 object_18)
    (nextspawn object_18 object_22)
    (nextspawn object_22 object_16)
    (nextspawn object_16 object_23)
    (nextspawn object_23 object_12)
    (nextspawn object_12 object_7)
    (nextspawn object_7 object_1)
    (nextspawn object_1 object_20)
    (nextspawn object_20 object_5)
    (nextspawn object_5 object_24)
    (nextspawn object_24 object_2)
    (nextspawn object_2 object_21)
    (nextspawn object_21 object_13)
    (nextspawn object_13 object_14)
    (ispoint object_10)
    (ispoint object_3)
    (ispoint object_0)
    (ispoint object_9)
    (ispoint object_4)
)
(:goal
(and
    (not (ispoint object_10))
    (not (ispoint object_3))
    (not (ispoint object_0))
    (not (ispoint object_9))
    (not (ispoint object_4))
    (not (ispoint object_19))
    (not (ispoint object_17))
    (not (ispoint object_11))
    (not (ispoint object_18))
    (not (ispoint object_22))
    (not (ispoint object_16))
    (not (ispoint object_23))
    (not (ispoint object_12))
    (not (ispoint object_7))
    (not (ispoint object_1))
    (not (ispoint object_20))
    (not (ispoint object_5))
    (not (ispoint object_24))
    (not (ispoint object_2))
    (not (ispoint object_21))
    (not (ispoint object_13))
    (not (ispoint object_14))
)
)
)