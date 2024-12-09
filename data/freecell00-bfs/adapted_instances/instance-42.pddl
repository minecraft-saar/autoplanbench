(define (problem freecell-2-2)
(:domain freecell)
(:objects
    object_3
    object_8
    object_6
    object_15
    object_29
    object_16
    object_7
    object_10
    object_4
    object_26
    object_13
    object_24
    object_21
    object_14
    object_1
    object_20
    object_2
    object_22
    object_9
    object_27
    object_5
    object_19
    object_25
    object_17
    object_23
    object_18
    object_0
    object_28
    object_12
    object_11
)
(:init
    (value object_11 object_12)
    (value object_28 object_0)
    (value object_18 object_23)
    (value object_17 object_12)
    (value object_25 object_0)
    (value object_19 object_23)
    (value object_5 object_12)
    (value object_27 object_0)
    (value object_9 object_23)
    (value object_22 object_12)
    (value object_2 object_0)
    (value object_20 object_23)
    (successor object_23 object_12)
    (successor object_1 object_14)
    (successor object_21 object_1)
    (successor object_24 object_21)
    (successor object_13 object_24)
    (successor object_0 object_23)
    (successor object_26 object_0)
    (successor object_4 object_26)
    (successor object_10 object_4)
    (successor object_7 object_10)
    (successor object_16 object_7)
    (successor object_29 object_16)
    (successor object_14 object_29)
    (suit object_11 object_15)
    (suit object_28 object_15)
    (suit object_18 object_15)
    (suit object_17 object_6)
    (suit object_25 object_6)
    (suit object_19 object_6)
    (suit object_5 object_8)
    (suit object_27 object_8)
    (suit object_9 object_8)
    (suit object_22 object_3)
    (suit object_2 object_3)
    (suit object_20 object_3)
    (canstack object_18 object_25)
    (canstack object_18 object_27)
    (canstack object_19 object_28)
    (canstack object_19 object_2)
    (canstack object_9 object_28)
    (canstack object_9 object_2)
    (canstack object_20 object_25)
    (canstack object_20 object_27)
    (home object_11)
    (home object_17)
    (home object_5)
    (home object_22)
    (cellspace object_4)
    (colspace object_0)
    (on object_18 object_25)
    (on object_20 object_9)
    (clear object_28)
    (clear object_18)
    (clear object_19)
    (clear object_27)
    (clear object_2)
    (clear object_20)
    (bottomcol object_28)
    (bottomcol object_25)
    (bottomcol object_19)
    (bottomcol object_27)
    (bottomcol object_9)
    (bottomcol object_2)
)
(:goal (and
    (home object_28)
    (home object_25)
    (home object_27)
    (home object_2)
)))
