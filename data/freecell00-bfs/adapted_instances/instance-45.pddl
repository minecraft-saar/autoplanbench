(define (problem freecell-2-5)
(:domain freecell)
(:objects
    object_11
    object_18
    object_5
    object_8
    object_6
    object_21
    object_25
    object_1
    object_28
    object_0
    object_2
    object_27
    object_23
    object_12
    object_26
    object_13
    object_14
    object_3
    object_22
    object_10
    object_17
    object_7
    object_16
    object_9
    object_29
    object_19
    object_20
    object_4
    object_15
    object_24
)
(:init
    (value object_24 object_15)
    (value object_4 object_20)
    (value object_19 object_29)
    (value object_9 object_15)
    (value object_16 object_20)
    (value object_7 object_29)
    (value object_17 object_15)
    (value object_10 object_20)
    (value object_22 object_29)
    (value object_3 object_15)
    (value object_14 object_20)
    (value object_13 object_29)
    (successor object_29 object_15)
    (successor object_26 object_12)
    (successor object_23 object_26)
    (successor object_27 object_23)
    (successor object_2 object_27)
    (successor object_20 object_29)
    (successor object_0 object_20)
    (successor object_28 object_0)
    (successor object_1 object_28)
    (successor object_25 object_1)
    (successor object_21 object_25)
    (successor object_6 object_21)
    (successor object_12 object_6)
    (suit object_24 object_8)
    (suit object_4 object_8)
    (suit object_19 object_8)
    (suit object_9 object_5)
    (suit object_16 object_5)
    (suit object_7 object_5)
    (suit object_17 object_18)
    (suit object_10 object_18)
    (suit object_22 object_18)
    (suit object_3 object_11)
    (suit object_14 object_11)
    (suit object_13 object_11)
    (canstack object_19 object_16)
    (canstack object_19 object_10)
    (canstack object_7 object_4)
    (canstack object_7 object_14)
    (canstack object_22 object_4)
    (canstack object_22 object_14)
    (canstack object_13 object_16)
    (canstack object_13 object_10)
    (home object_24)
    (home object_9)
    (home object_17)
    (home object_3)
    (cellspace object_28)
    (colspace object_20)
    (on object_7 object_13)
    (on object_10 object_22)
    (clear object_4)
    (clear object_19)
    (clear object_16)
    (clear object_7)
    (clear object_10)
    (clear object_14)
    (bottomcol object_4)
    (bottomcol object_19)
    (bottomcol object_16)
    (bottomcol object_22)
    (bottomcol object_14)
    (bottomcol object_13)
)
(:goal (and
    (home object_4)
    (home object_16)
    (home object_10)
    (home object_14)
)))
